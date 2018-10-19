<?php
/*~
.----------------------------------------------------------------------------.
|  Mission: Code Business Ideas Into Realities                               |
|   Version: 0.1                                                             |
|----------------------------------------------------------------------------|
|     Admin: Charles Evans Ogego Otieno (project admininistrator)            |
|   Authors: C.E.O Otieno (codeartist254) codeartist254@gmail.com            |
|          : trulance247@gmail.com                                                                |
|          :                                   |
| Copyright (c) 2013-2015, C.E.O Otieno. All Rights Reserved.                |
| ---------------------------------------------------------------------------|
|   License:                                                                 |
| This program is distributed in the hope that it will be useful - WITHOUT   |
| ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or      |
| FITNESS FOR A PARTICULAR PURPOSE.                                          |
|                                                                            |
| THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"|
| AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE  |
| IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE |
| ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE  |
| LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR        |
| CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF       |
| SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS   |
| INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN    |
| CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)    |
| ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE |
| POSSIBILITY OF SUCH DAMAGE.                                                |
|----------------------------------------------------------------------------|
| I offer a number of paid services :                                        |
| - Web Hosting on highly optimized fast and secure servers                  |
| - Technology Consulting                                                    |
| - Outsourcing (highly qualified programmers and graphic designers)         |
'----------------------------------------------------------------------------'
*/

Class ImageService {
    private $image;
    private $width;
    private $height;
    private $imageResized;

    function __construct($fileName){
        //Open up the image file
        $this->image = $this->openImage($fileName);

        //get width & height
        $this->width = imagesx($this->image);
        $this->height = imagesy($this->image);
    }

    private function openImage($file){
        //get extension
        $ext = strtolower(strrchr($file, ','));
        switch ($ext) {
            case '.jpg':
            case '.jpeg':
                $img = @imagecreatefromjpeg($file);
                break;
            case '.gif':
                $img = @imagecreatefromgif($file);
                break;
            case '.png':
                $img = @imagecreatefrompng($file);
                break;
            default:
                $img = false;
                break;
        }
        return $img;
    }

    public function resizeImage($newWidth, $newHeight, $option = "auto"){
        # Get optimal width & height based on option
        $optionArray = $this->getDimensions($newWidth, $newHeight, strtolower($option));
        $optimalWidth = $optionArray['optimalWidth'];
        $optimalHeight = $optionArray['optimalHeight'];

        #resample - create image canvas of x,y size
        $this->imageResized = imagecreatetruecolor($optimalWidth, $optimalHeight);
        imagecopyresampled($this->imageResized, $this->image, 0, 0, 0, 0, $optimalWidth, $optimalHeight, $this->width, $this->height);
        #if option is 'crop', then crop that shit! period!!
        if ($option = 'crop') {
            $this->crop($optimalWidth, $optimalHeight, $newWidth, $newHeight);
        }
    }

    public function getDimensions($newWidth, $newHeight, $option){
        switch ($option) {
            case 'exact':
                $optimalWidth = $newWidth;
                $optimalHeight = $newHeight;
                break;
            case 'portrait':
                $optimalWidth = $this->getSizeByFixedHeight($newHeight);
                $optimalHeight = $newHeight;
                break;
            case 'landscape':
                $optimalWidth = $newWidth;
                $optimalHeight = $this->getSizeByFixedWidth($newWidth);
                break;
            case 'auto':
                $optionArray = $this->getSizeByAuto($newWidth, $newHeight);
                $optimalWidth = $optionArray['optimalWidth'];
                $optimalHeight = $optionArray['optimalHeight'];
                break;
            case 'crop':
                $optionArray = $this->getOptimalCrop($newWidth, $newHeight);
                $optimalWidth = $optionArray['optimalWidth'];
                $optimalHeight = $optionArray['optimalHeight'];
                break;
        }
        return array('optimalWidth' => $optimalWidth, 'optimalHeight' => $optimalHeight);
    }

    private function getSizeByFixedHeight($newHeight){
        $ratio = $this->width / $this->height;
        $newWidth = $newHeight * $ratio;
        return $newWidth;
    }

    private function getSizeByFixedWidth($newWidth){
        $ratio = $this->height / $this->width;
        $newHeight = $newWidth * $ratio;
        return $newHeight;
    }

    private function getSizeByAuto($newWidth, $newHeight){
        if ($this->height < $this->width) {
            # image to be resized is wider(landscape) [landscape --> portrait]
            $optimalWidth = $newWidth;
            $optimalHeight = $this->getSizeByFixedWidth($newWidth);
        }
        elseif ($this->height > $this->width) {
            # image to be resised is taller(portrait) [portrait --> landscape]
            $optimalWidth = $this->getSizeByFixedHeight($newHeight);
            $optimalHeight = $newHeight;
        }
        else {
            #image to be resized is a square
            if ($newHeight < $newWidth) {
                $optimalWidth = $newWidth;
                $optimalHeight = $this->getSizeByFixedWidth($newWidth);
            }
            elseif ($newHeight > $newWidth) {
                $optimalWidth = $this->getSizeByFixedHeight($newHeight);
                $optimalHeight = $newHeight;
            }
            else {
                #A square being resized to a square
                $optimalWidth = $newWidth;
                $optimalHeight = $newHeight;
            }
        }
        return array('optimalWidth' => $optimalWidth, 'optimalHeight' => $optimalHeight);
    }

    private function getOptimalCrop($newWidth, $newHeight){
        $heightRatio = $this->height/$newHeight;
        $widthRatio = $this->width/$newWidth;

        if ($heightRatio < $widthRatio) {
            $optimalRatio = $heightRatio;
        }
        else {
            $optimalRatio = $widthRatio;
        }

        $optimalHeight = $this->height/$optimalRatio;
        $optimalWidth = $this->width/$optimalRatio;

        return [
            'optimalWidth' => $optimalWidth,
            'optimalHeight' => $optimalHeight
        ];
    }

    private function crop($optionalW, $optionalH, $newW, $newH){
        #find center - to be used by the crop
        $cropStartX = ($optionalW/2) - ($newW/2);
        $cropStartY = ($optionalH/2) - ($newH/2);

        $crop = $this->imageResized;

        #now crop from center to exact requested size
        $this->imageresized = imagecreatetruecolor($newW, $newH);
        imagecopyresampled($this->imageResized, $crop, 0, 0, $cropStartX, $cropStartY, $newW, $newH, $newW, $newH);
    }

    public function saveImage($savePath, $imageQuality = "100"){
        #get extension
        $extension = strrchr($savePath, '.');
        $extension = strtolower($extension);

        switch ($extension) {
            case '.jpeg':
            case '.jpg':
                if (imagetypes() & IMG_JPG) {
                    imagejpeg($this->imageResized, $savePath, $imageQuality);
                }
                break;
            case '.gif':
                if (imagetypes() & IMG_GIF) {
                    imagegif($this->imageResized, $savePath);
                }
                break;
            case '.png':
                #scale quality from 0-100 to 0-9
                $scaleQlty = round(($this->imageResized/100) * 9);
                #invert quality setting as 0 is the best not 9
                $invertScaleQlty = 9 - $scaleQlty;
                if (imagetypes() & IMG_PNG) {
                    imagepng($this->imageResized, $savePath, $invertScaleQlty);
                }
                break;
            default:
                # code...
                break;
        }
        imagedestroy($this->imageResized);
    }
}