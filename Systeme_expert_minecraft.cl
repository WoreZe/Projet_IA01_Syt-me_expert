;;Initialisation de la base de faits (inventaire) et de la base de regle

(setq inventaire nil)
(setq bdr '(
           (stone_brick 4 ((>= stone 4)))
           (block_of_clay 1 ((>= clay 4)))
           (block_of_diamond 1 ((>= diamond 9)) crafting_table)
           (block_of_gold 1 ((>= gold_ingot 9)) crafting_table)
           (block_of_iron 1 ((>= iron_ingot 9)) crafting_table)
           (lapis_lazuli_block 1 ((>= lapis_lazuli 9)) crafting_table)
           (bricks 1 ((>= brick 4)))
           (stone_slab 3 ((>= stone 3)) crafting_table)
           (sandstone_slab 3 ((>= sandstone 3)) crafting_table)
           (wooden_slab 3 ((>= wooden_plank 3)) crafting_table)
           (cobblestone_slab 3 ((>= cobblestone 3)) crafting_table)
           (bricks_slab 3 ((>= bricks 3)) crafting_table)
           (stone_brick_slab 3 ((>= stone_brick 3)) crafting_table)
           (glowstone 1 ((>= glowstone_dust 4)))
           (sandstone 1 ((>= sand 4)))
           (wooden_plank 4 ((>= wood 1)))
           (snow 1 ((>= snowball 4)))
           (melon 1 ((>= melon_slice 9)) crafting_table)
           (jack_o_lantern 1 ((>= pumpkin 1) (>= torch 1)))
           (iron_bars 16 ((>= iron_ingot 6)) crafting_table)
           (glass_pane 16 ((>= glass 6)) crafting_table)
           (chest 1 ((>= wooden_plank 8)) crafting_table)
           (crafting_table 1 ((>= wooden_plank 4)))
           (tnt 1 ((> gunpowder 5) (>= sand 4)) crafting_table)
           (bookshelf 1 ((>= wooden_plank 6) (>= book 3)) crafting_table)
           (wool 1 ((>= _string 4)))
           (dispenser 1 ((>= cobblestone 7) (>= redstone 1) (>= bow 1)) crafting_table)
           (furnace 1 ((>= cobblestone 8)) crafting_table)
           (note_block 1 ((>= wooden_plank 8) (>= redstone 1)) crafting_table)
           (jukebox 1 ((>= wooden_plank 8) (>= diamond 1)) crafting_table)
           (piston 1 ((>= cobblestone 4) (>= wooden_plank 3) (>= redstone 1) (>= iron_ingot 1)) crafting_table)
           (sticky_piston 1 ((>= piston 1) (>= slimeball 1)))
           (fence 2 ((>= stick 6)) crafting_table)
           (fence_gate 1 ((>= wooden_plank 2) (>= stick 4)) crafting_table)
           (ladder 2 ((>= stick 7)) crafting_table)
           (rail 16 ((>= iron_ingot 6) (>= stick 1)) crafting_table)
           (powered_rail 6 ((>= gold_ingot 6) (>= stick 1) (>= redstone 1)) crafting_table)
           (detector_rail 6 ((>= iron_ingot 6) (>= stone_pressure_plate 1) (>= redstone 1)) crafting_table)
           (torch 4 ((>= stick 1) (>= coal 1)))
           (wooden_stair 4 ((>= wooden_plank 6)) crafting_table)
           (stone_stair 4 ((>= cobblestone 6)) crafting_table)
           (bricks_stair 4 ((>= bricks 6)) crafting_table)
           (stone_brick_stair 4 ((>= stone_brick 6)) crafting_table)
           (lever 1 ((>= stick 1) (>= cobblestone 1)) crafting_table)
           (stone_pressure_plate 1 ((>= stone 2)))
           (wooden_pressure_plate 1 ((>= wooden_plank 2)))
           (redstone_torch 1 ((>= stick 1) (>= redstone 1)))
           (_button 1 ((>= stone 2)))
           (cake 1 ((>= milk 3) (>= sugar 2) (>= wheat 3) (>= egg 1)) crafting_table)
           (trapdoor 2 ((>= wooden_plank 6)) crafting_table)
           (iron_shovel 1 ((>= iron_ingot 1) (>= stick 2)) crafting_table) 
           (iron_pickaxe 1 ((>= iron_ingot 3) (>= stick 2)) crafting_table)
           (iron_axe 1 ((>= iron_ingot 3) (>= stick 2)) crafting_table)
           (flint_and_steel 1 ((>= flint 1) (>= iron_ingot 1)))
           (bow 1 ((>= stick 3) (>= _string 3)) crafting_table)
           (arrow 4 ((>= stick 1) (>= flint 1) (>= feather 1)) crafting_table)
           (iron_sword 1 ((>= stick 1) (>= iron_ingot 2)) crafting_table)
           (wooden_sword 1 ((>= stick 1) (>= wooden_plank 2)) crafting_table)
           (wooden_shovel 1 ((>= wooden_plank 1) (>= stick 2)) crafting_table) 
           (wooden_pickaxe 1 ((>= wooden_plank 3) (>= stick 2)) crafting_table)
           (wooden_axe 1 ((>= wooden_plank 3) (>= stick 2)) crafting_table)
           (stone_sword 1 ((>= stick 1) (>= cobblestone 2)) crafting_table)
           (stone_shovel 1 ((>= cobblestone 1) (>= stick 2)) crafting_table) 
           (stone_pickaxe 1 ((>= cobblestone 3) (>= stick 2)) crafting_table)
           (stone_axe 1 ((>= cobblestone 3) (>= stick 2)) crafting_table)
           (diamond_sword 1 ((>= stick 1) (>= diamond 2)) crafting_table)
           (diamond_shovel 1 ((>= diamond 1) (>= stick 2)) crafting_table) 
           (diamond_pickaxe 1 ((>= diamond 3) (>= stick 2)) crafting_table)
           (diamond_axe 1 ((>= diamond 3) (>= stick 2)) crafting_table)
           (stick 4 ((>= wooden_plank 2)))
           (bowl 4 ((>= wooden_plank 3)) crafting_table)
           (mushroom_stew 1 ((>= red_mushroom 1) (>= brown_mushroom 1)) crafting_table)
           (golden_sword 1 ((>= stick 1) (>= gold_ingot 2)) crafting_table)
           (golden_shovel 1 ((>= gold_ingot 1) (>= stick 2)) crafting_table) 
           (golden_pickaxe 1 ((>= gold_ingot 3) (>= stick 2)) crafting_table)
           (golden_axe 1 ((>= gold_ingot 3) (>= stick 2)) crafting_table)
           (wooden_hoe 1 ((>= wooden_plank 2) (>= stick 2)) crafting_table)
           (stone_hoe 1 ((>= cobblestone 2) (>= stick 2)) crafting_table)
           (iron_hoe 1 ((>= iron_ingot 2) (>= stick 2)) crafting_table)
           (diamond_hoe 1 ((>= diamond 2) (>= stick 2)) crafting_table)
           (golden_hoe 1 ((>= gold_ingot 2) (>= stick 2)) crafting_table)
           (bread 1 ((>= wheat 3)) crafting_table)
           (leather_cap 1 ((>= leather 5)) crafting_table)
           (leather_tunic 1 ((>= leather 8)) crafting_table)
           (leather_pants 1 ((>= leather 7)) crafting_table)
           (leather_boots 1 ((>= leather 4)) crafting_table)
           (iron_helmet 1 ((>= iron_ingot 5)) crafting_table)
           (iron_chestplate 1 ((>= iron_ingot 8)) crafting_table)
           (iron_legging 1 ((>= iron_ingot 7)) crafting_table)
           (iron_boots 1 ((>= iron_ingot 4)) crafting_table)
           (golden_helmet 1 ((>= gold_ingot 5)) crafting_table)
           (golden_chestplate 1 ((>= gold_ingot 8)) crafting_table)
           (golden_legging 1 ((>= gold_ingot 7)) crafting_table)
           (golden_boots 1 ((>= gold_ingot 4)) crafting_table)
           (diamond_helmet 1 ((>= diamond 5)) crafting_table)
           (diamond_chestplate 1 ((>= diamond 8)) crafting_table)
           (diamond_legging 1 ((>= diamond 7)) crafting_table)
           (diamond_boots 1 ((>= diamond 4)) crafting_table)
           (painting 1 ((>= stick 8) (>= wool 1)) crafting_table)
           (golden_apple 1 ((>= block_of_gold 8) (>= apple 1)) crafting_table)
           (sign 1 ((>= wooden_plank 6) (>= stick 1)) crafting_table)
           (wooden_door 1 ((>= wooden_plank 6)) crafting_table)
           (bucket 1 ((>= iron_ingot 3)) crafting_table)
           (minecart 1 ((>= iron_ingot 5)) crafting_table)
           (iron_door 1 ((>= iron_ingot 6)) crafting_table)
           (boat 1 ((>= wooden_plank 5)) crafting_table)
           (paper 3 ((>= sugar_canes 3)) crafting_table)
           (book 1 ((>= paper 3)) crafting_table)
           (minecart_with_chest 1 ((>= minecart 1) (>= chest 1)))
           (minecart_with_furnace 1 ((>= minecart 1) (>= furnace 1)))
           (compass 1 ((>= iron_ingot 4) (>= redstone 1)) crafting_table)
           (clock 1 ((>= gold_ingot 4) (>= redstone 1)) crafting_table)
           (fishing_rod 1 ((>= stick 2) (>= _string 2)) crafting_table)
           (sugar 1 ((>= sugar_canes 1)))
           (bed 1 ((>= wool 3) (>= wooden_plank 3)) crafting_table)
           (redstone_repeater 1 ((>= stone 3) (>= redstone 1) (>= redstone_torch 2)) crafting_table)
           (cookie 8 ((>= wheat 2) (>= cococa_bean 1)) crafting_table)
           (_map 1 ((>= compass 1) (>= paper 8)) crafting_table)
           (shears 1 ((>= iron_ingot 2)))
            (bone_meal 3 ((>= bone 1)))
            

        )
      )

;;Fonctions utiles et leurs explications

;getname retourne le nom de l'item � crafter de regle
(defun getname (regle)
  (car regle))


;getquantity retourne le nombre d'item qui sera crafte pour regle
(defun getquantity (regle)
  (cadr regle))


;regle_candidate retourne la regle permettant de craft l'item rentr� en param�tres
(defun regle_candidate (item bdr)
  (let ((candidate nil))
    (dolist (regle bdr)
      (if (equal (getname regle) item)
          (setq candidate regle)))
    candidate))


;premisse_regle retourne la liste des premisses de regle
(defun premisse_regle(regle)
  (caddr regle
   )
  )


;item_premisse retourne la liste des item necessaires pour crafter l'item but
;(item_premisse 'diamond_pickaxe) retourne (stick diamond)
(defun item_premisse (but)
  (let ((items nil) (premisses (premisse_regle (regle_candidate but bdr))))
    (dolist (x premisses items)
      (push (car (cdr x)) items)
      )
    items)
  )


;real_number retourne le nombre d'item a crafter pour avoir au minimum ce qui est demande
;(real_number torch 14 bdr) retourne 16 car les crafts de torche sont des multiples de 4 
(defun real_number (item nb bdr)
  (let ((valeur 0))
    (if (assoc item bdr)
        (setq valeur (getquantity (assoc item bdr)))
      (setq valeur nb)
      )
    (while (< valeur nb)
      (setq valeur (+ valeur (getquantity (assoc item bdr))))
      )
    valeur
    )
  )

;demande_item demande � l'utilisateur un item et le nombre d'item � crafter 
(defun demande_item (bdr)
  (format t "entrez le nom de l'item a crafter (en anglais) et sa quantite ~&")
  (let ((item (read))(nb(read)))
    (setq nb (real_number item nb bdr))
    (if (regle_candidate item bdr) 
        (list item nb)
      (progn
        (format t "l'item n'est pas craftable ~&")
        (demande_item bdr)))))


;demande_inventaire forme une liste d'un item et du nombre d'item en possession
(defun demande_inventaire (bdr)
  (format t "entrez le nom de l'item (en anglais) et sa quantite ~&")
  (let ((item (read))(nb(read)))
    (list item nb)))


;entrer_inventaire permet de rentrer l'inventaire sous forme de liste ((item nb_item) ... ) 
(defun entrer_inventaire (bdr inventaire)
  (push (demande_inventaire bdr) inventaire)
  (format t "avez vous encore des items a rentrer? (t ou nil) ~&")
  (let ((reponse (read)))
    (if reponse 
        (entrer_inventaire bdr inventaire)
      inventaire
      )
    )
  )


;nb_item_inventaire retourne le nombre d'item qu'il y a dans l'inventaire
(defun nb_item_inventaire (item inventaire) 
  (if (assoc item inventaire)
      (car (cdr (assoc item inventaire)))
    0)
  )


;combien retourne le nombre d'item necessaire au craft de nb item de regle
;(combien '(diamond_pickaxe 1 ((>= diamond 3) (>= stick 2)) crafting_table) 1 'stick)
;retournera (>= stick 2)

(defun combien (regle nb item) 
  (let ((quantite 0) (compteur 0))
    (while (< quantite nb)
      (setq quantite (+ quantite (getquantity regle)))
      (setq compteur (+ compteur 1))
      )
    (dolist (x (premisse_regle regle))
      (if (equal item (cadr x))
          (setq compteur (* compteur (car (cddr x))))
        )
      )
    (list '>= item compteur)
    )
  )


;combien_recherche retourne le nombre d'item necessaire a crafter pour en avoir 
;assez pour assurer le craft de nb item de regle
;(combien_recherche '(diamond_pickaxe 1 ((>= diamond 3) (>= stick 2)) crafting_table) 1 'stick bdr)
;retournera (>= stick 4). En effet 2 stick sont n�cessaires et un craft de stick en fabrique 4
 
(defun combien_recherche (regle nb item bdr)
  (let ((combien_reel (car (cddr (combien regle nb item)))) (quantite 0))
    (if (assoc item bdr)
        (setq quantite (getquantity (regle_candidate item bdr)))
      (setq quantite combien_reel)
      )
    (while (> combien_reel quantite)
      (setq quantite (+ quantite (getquantity (regle_candidate item bdr))))
      )
        (list '>= item quantite)
    )
  )


;table permet de v�rifier s'il y a une table de craft necessaire pour le craft dans 
;l'inventaire
(defun table (liste) 
  (assoc 'crafting_table liste)
  )


;modifie_inventaire va permettre de supprimer les item utilises lors du craft 
;dans l'inventaire
(defun modifie_inventaire (inv item nbinv nbbesoin)
  (if (assoc item inv)
      (setf (car (cdr (assoc item inv))) (- nbinv nbbesoin))
    (push (list item (- 0 nbbesoin)) inventaire)
    )
  )


;ajout_inventaire va permettre d'ajouter les item craft�s
(defun ajout_inventaire (item nb)
  (if (assoc item inventaire)
      (setf (car (cdr (assoc item inventaire))) (+ (car(cdr (assoc item inventaire))) nb))
    (push (list item nb) inventaire)
    
    )
  
  )

;verification va verifier si le nombre d'item necessaire au craft est bien 
;present dans l'inventaire 
(defun verification (obj inv) 
  (let ((valeur (car (cdr (assoc (cadr obj) inv)))))
    (if valeur
    (funcall (car obj) valeur (car (cddr obj)))
      )
    )
  )



;;Fonction de recherche principale, les arguments sont but de la forme (item nombre)
;inventaire bdr item_but (on garde meme pendant les appels recursifs l'item que 
;l'on veut crafter de base) et nb_item qui correspond au nombre d'item de but qui va 
;etre utilis� pour crafter l'item principal

(defun recherche (but inventaire bdr item_but nb_item)
  (let* ((regle (assoc (car but) bdr)) (quantite (car (cdr but))) (item (car but)))
    
    (cond ((not (assoc item bdr)) ;si item necessaire pas craftable
           (if (not (assoc item inventaire)) ;si item necessaire pas dans inventaire
               (progn 
                 (error "Item ~a n'est pas dans l'inventaire, il en faut ~d ~&" item quantite)
                 NIL)
             (if (< (nb_item_inventaire item inventaire) quantite) ;si item necessaire dans inventaire mais pas en assez grande quantite
                 (progn
                   (let ((diff (- quantite (nb_item_inventaire item inventaire))))
                     (error "Pas assez de ~A, il en manque ~d  ~&" item diff)
                     
                   NIL)
                   )
               )
             )
           )
           
          ((and (not(table inventaire)) (member 'crafting_table (cdr regle))) 
           (error "Pas de table de craft~&"))
           
          (T 
           (progn    
             (format t "craft de ~a ~& ~T" item)
             (if (not (equal item item_but))
                      (dolist (x (item_premisse item))
                        (ajout_inventaire x 0)
                        )
                      )

             (dolist (premisse (premisse_regle regle))
               (if (not (verification (combien regle quantite (car (cdr premisse))) inventaire)) ;si on n'a pas le nombre d'item necessaire au craft
                   (progn
                     (if (assoc (car (cdr premisse)) bdr)
                         (setq but (list (car (cdr premisse)) (real_number (car (cdr premisse)) (- (car (cddr (combien_recherche regle quantite (car (cdr premisse)) bdr))) (nb_item_inventaire (car (cdr premisse)) inventaire)) bdr))) ;on va donc chercher a crafter ce qu'il nous manque 
                       (setq but (list (car (cdr premisse)) (real_number (car (cdr premisse))  (car (cddr (combien_recherche regle quantite (car (cdr premisse)) bdr))) bdr)))
                       )
                       (recherche but inventaire bdr item_but (car (cddr (combien regle quantite (car (cdr premisse))))))
                     )
                  (progn
                 (modifie_inventaire inventaire (car (cdr premisse)) (nb_item_inventaire (car (cdr premisse)) inventaire) (car (cddr (combien regle quantite (car (cdr premisse))))))
                  
                    )
               ) 
               )
             (format t "check! ~&")
            
             (if (not (equal item item_but))
                 (ajout_inventaire item (- quantite nb_item)) ;on ajoute les item craft�s moins ce qui a �t� utilis� pour le craft
               (progn 
                 (ajout_inventaire item quantite) ;on ajoute le craft de l'objet initial
                 (format t "vous pouvez crafter ~a ~&" item)
                 )
               
               )
             
             )
          )
      )
    
    )
  
  )

;initialisation de l'inventaire
(setq inventaire (entrer_inventaire bdr inventaire))

;appels r�cursifs
(defun recherche_rec (bdr)
  (format t "avez vous un craft a faire? (oui ou non) ~&")
  (let ((reponse (read)))
    (if (equal reponse 'oui) 
        (progn
          (setq but (demande_item bdr))
          (dolist (x (item_premisse (car but)))
            (ajout_inventaire x 0)
            )
          (recherche but inventaire bdr (car but) 0)
          (recherche_rec bdr)
          )
          )
      
    )
  )

(recherche_rec bdr)
