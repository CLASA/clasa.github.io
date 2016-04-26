((nil . (
         (eval . (require 'ox-md))
         (eval . (defun org-md-publish-to-md (plist filename pub-dir)
                   "Publish an org file to Markdown.

                    Return output file name."
                   (org-publish-org-to 'md filename ".md" plist pub-dir))
               )
         (eval . (setq org-publish-project-alist
                       `(("clasa"
                          :base-directory ,(concat
                                            (projectile-project-root)
                                            "/_posts_org/")
                          :publishing-directory ,(concat
                                                  (projectile-project-root)
                                                  "./_posts")
                          ;;:section-numbers nil
                          :publishing-function org-md-publish-to-md
                          :with-toc nil))
                       )
               )
         )
      ))
