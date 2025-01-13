# applescripts
Useful applescripts to wrangle Mac things

I'm not a programmer and I don't play one on TV, however, I like to tinker. I've written some things, and modified or created others here with the help of various LLM models. Feel free to use, re-use, and modify but please share interesting and useful improvements so we all can benefit.

---

**Print Job Transfer**: 
Since Hypercard, I've had fun tinkering with what one can do, but I started to get serious when _Apple destroyed their print job GUI_ and removed the drag and drop job transfer function. Since the transfer optioin still exists via Terminal, and I'm lazy, I slapped together a basic script to do this for me so I don't have to type so much. It works, essentially, and I use it frequently. 

      **Mode d'emploi**:   
      run the script,   
      choose a source printer  
      choose a destination printer  
      All pending jobs will be transferred.
  
---

**Docx format to Markdown (Obsidian) conversion**
Secondly, I'm starting to tinker with obsidian, and wanted to convert some docs stored on google drive to markdown. After tinkering with Pandoc, and finding Panconvert slow, I started a script to make converting batches of files ... it works, and I've tested on various sets of files and nested folders. 

      **Mode d'emploi**:   
      run the script,   
      choose a source folder,   
      choose a destination folder,   
      choose whether to process files in nested subfolders. If this option is taken, the folder structure will be kept.

Notes:  
**Pandoc creates html <img> style tags**, which obsidian and most markdown editors can parse. 
However, since this is a batch script that pulls images from within docx files and places them inside an "attachments" folder en masse, if one later tries to **move a large batch from one location to another** with the links generated in pandoc, they will break.

Pandoc generates this:
**<img src="Users/{username}/{some folder}/{some subfolder}/attachments/{md filename}/media/image{#}"** I followed the lead of a few pandoc tutorials to create separate media folders for each document, but because of how Pandoc handles media, I haven't found a way to have pandoc generate relative links directly, so I relativize the link in a separate step. I like to keep the media all in the attachments folder, and Pandoc places it in subfolders by filename, which I have chosen not to alter.

Therefore, this conversion script generates html style <img> tags with the following structure:
**<img src="attachments/{markdown filename}/media/image{#}"**, and retains the style elements for sizing.  
More on Pandoc mdeia file locations and link notation [here](https://github.com/jgm/pandoc/issues/1986)

I have succesfully tested **converting these html format links to Obsidian ![[Image]] style links**, but the problem of adapting all possible size style notations made the code messy, and since most md viewers handle html links just fine, I really didn't feel like putting those adaptations into this version. 
