;; Skeleton des headers protege
(define-skeleton insert-protect-header
  "Inserts a define to protect the header file."
  ""
  '(setq str (file-name-sans-extension
          (file-name-nondirectory (buffer-file-name))))
  "#ifndef __"(upcase str)"_H__\n"
  "#define __"(upcase str)"_H__\n"
  "\n"
  "\n"
  "\n"
  "#endif /* !__"(upcase str)"_H__ */\n")

;; Skeleton des Makefiles
(define-skeleton create-makefile
  "Create a Makefile."
  ""
  "NAME=\n"
  "\n"
  "SRC=\n"
  "\n"
  "OBJ=		$(SRC:.c=.o)\n"
  "GCC=		gcc\n"
  "CFLAGS=	-Wextra -Wall -Werror -std=gnu99\n"
  "RM=		rm -vf\n"
  "\n"
  "$(NAME):	$(OBJ)\n"
  "		$(GCC) $(CFLAGS) -o $(NAME) $(OBJ)\n"
  "\n"
  "clean:\n"
  "		$(RM) $(OBJ)\n"
  "\n"
  "all:		$(NAME)\n"
  "\n"
  "fclean:	clean\n"
  "		$(RM) $(NAME)\n"
  "\n"
  "re:		fclean all\n"
  "\n")

;; Skeleton des .c
(define-skeleton new_c_fic
  "Create a New C."
  ""
  "#include <unistd.h>\n"
  "#include <stdlib.h>\n"
  "#include <stdio.h>\n"
  "\n"
  "int			main(int ac, char **av)\n"
  "{\n"
  "  return (EXIT_SUCCESS);\n"
  "}\n")
