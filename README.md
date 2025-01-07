# applescripts
Useful applescripts to wrangle Mac things

I'm not a programmer and I don't play one on TV, however, I like to tinker. I've written some things, and modified or created others here with the help of various LLM models. Feel free to use, re-use, and modify but please share interesting and useful improvements so we all can benefit.

---

**Print Job Transfer**: 
Since Hypercard, I've had fun tinkering with what one can do, but I started to get serious when _Apple destroyed their print job GUI_ and removed the drag and drop job transfer function. Since the transfer optioin still exists via Terminal, and I'm lazy, I slapped together a basic script to do this for me so I don't have to type so much. It works, essentially, and I use it frequently. 

  **Mode d'emploi**: choose a source printer, choose a destination printer. All pending jobs will be transferred.
  
---

**Docx format to Markdown (Obsidian) conversion**
Secondly, I'm starting to tinker with obsidian, and wanted to convert some docs stored on google drive to markdown. After tinkering with Pandoc, and finding Panconvert slow, I started a script to make converting batches of files and then used a LLM to help flesh it out and correct some innitail errors. Again, it works, and I've tested on various sets of files and nested folders. 

  **Mode d'emploi**: run the script, choose a source folder, choose a destination folder, choose whether to process files in nested subfolders. If this option is taken, the folder structure will be kept.
