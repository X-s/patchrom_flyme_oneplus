.class Lcom/oneplus/gallery/OPGallery$3;
.super Lcom/oneplus/gallery/GalleryDialogFragment;
.source "OPGallery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/OPGallery;->addTo(Ljava/util/List;Ljava/util/Set;Lcom/oneplus/base/OperationCallback;Landroid/os/Handler;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/OPGallery;

.field final synthetic val$bottomSheetListener:Lcom/oneplus/gallery/BottomSheetView$BottomSheetListener;

.field final synthetic val$galleryActivity:Lcom/oneplus/gallery/GalleryActivity;

.field final synthetic val$media:Ljava/util/List;

.field final synthetic val$mediaSetList:Lcom/oneplus/gallery/media/MediaSetList;

.field final synthetic val$mediaSetsToExclude:Ljava/util/Set;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/OPGallery;Lcom/oneplus/gallery/media/MediaSetList;Ljava/util/Set;Ljava/util/List;Lcom/oneplus/gallery/GalleryActivity;Lcom/oneplus/gallery/BottomSheetView$BottomSheetListener;)V
    .locals 0

    .prologue
    .line 302
    iput-object p1, p0, Lcom/oneplus/gallery/OPGallery$3;->this$0:Lcom/oneplus/gallery/OPGallery;

    iput-object p2, p0, Lcom/oneplus/gallery/OPGallery$3;->val$mediaSetList:Lcom/oneplus/gallery/media/MediaSetList;

    iput-object p3, p0, Lcom/oneplus/gallery/OPGallery$3;->val$mediaSetsToExclude:Ljava/util/Set;

    iput-object p4, p0, Lcom/oneplus/gallery/OPGallery$3;->val$media:Ljava/util/List;

    iput-object p5, p0, Lcom/oneplus/gallery/OPGallery$3;->val$galleryActivity:Lcom/oneplus/gallery/GalleryActivity;

    iput-object p6, p0, Lcom/oneplus/gallery/OPGallery$3;->val$bottomSheetListener:Lcom/oneplus/gallery/BottomSheetView$BottomSheetListener;

    invoke-direct {p0}, Lcom/oneplus/gallery/GalleryDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 26
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 307
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/gallery/OPGallery$3;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 308
    .local v2, "activity":Landroid/app/Activity;
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 309
    .local v22, "itemInfos":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/BottomSheetView$BottomSheetItemInfo;>;"
    const-string v18, "0"

    .line 310
    .local v18, "favoriteMediaCountStr":Ljava/lang/String;
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery/OPGallery$3;->val$mediaSetList:Lcom/oneplus/gallery/media/MediaSetList;

    invoke-interface {v3}, Lcom/oneplus/gallery/media/MediaSetList;->size()I

    move-result v3

    move/from16 v0, v21

    if-ge v0, v3, :cond_5

    .line 312
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery/OPGallery$3;->val$mediaSetList:Lcom/oneplus/gallery/media/MediaSetList;

    move/from16 v0, v21

    invoke-interface {v3, v0}, Lcom/oneplus/gallery/media/MediaSetList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/oneplus/gallery/media/MediaSet;

    .line 313
    .local v24, "set":Lcom/oneplus/gallery/media/MediaSet;
    invoke-interface/range {v24 .. v24}, Lcom/oneplus/gallery/media/MediaSet;->getType()Lcom/oneplus/gallery/media/MediaSet$Type;

    move-result-object v3

    sget-object v4, Lcom/oneplus/gallery/media/MediaSet$Type;->USER:Lcom/oneplus/gallery/media/MediaSet$Type;

    if-ne v3, v4, :cond_3

    .line 315
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery/OPGallery$3;->val$mediaSetsToExclude:Ljava/util/Set;

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery/OPGallery$3;->val$mediaSetsToExclude:Ljava/util/Set;

    move-object/from16 v0, v24

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 310
    :cond_0
    :goto_1
    add-int/lit8 v21, v21, 0x1

    goto :goto_0

    .line 317
    :cond_1
    sget-object v3, Lcom/oneplus/gallery/media/MediaSet;->PROP_NAME:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v24

    invoke-interface {v0, v3}, Lcom/oneplus/gallery/media/MediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 318
    .local v7, "displayName":Ljava/lang/String;
    sget-object v3, Lcom/oneplus/gallery/media/MediaSet;->PROP_MEDIA_COUNT:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v24

    invoke-interface {v0, v3}, Lcom/oneplus/gallery/media/MediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    .line 319
    .local v23, "mediaCount":Ljava/lang/Integer;
    if-nez v23, :cond_2

    const-string v8, "0"

    .line 320
    .local v8, "mediaCountStr":Ljava/lang/String;
    :goto_2
    new-instance v3, Lcom/oneplus/gallery/BottomSheetView$BottomSheetItemInfo;

    move/from16 v0, v21

    int-to-long v4, v0

    const v6, 0x7f020049

    invoke-virtual {v2, v6}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-direct/range {v3 .. v8}, Lcom/oneplus/gallery/BottomSheetView$BottomSheetItemInfo;-><init>(JLandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 319
    .end local v8    # "mediaCountStr":Ljava/lang/String;
    :cond_2
    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    .line 322
    .end local v7    # "displayName":Ljava/lang/String;
    .end local v23    # "mediaCount":Ljava/lang/Integer;
    :cond_3
    move-object/from16 v0, v24

    instance-of v3, v0, Lcom/oneplus/gallery/media/FavoriteMediaSet;

    if-eqz v3, :cond_0

    .line 324
    sget-object v3, Lcom/oneplus/gallery/media/MediaSet;->PROP_MEDIA_COUNT:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v24

    invoke-interface {v0, v3}, Lcom/oneplus/gallery/media/MediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    .line 325
    .restart local v23    # "mediaCount":Ljava/lang/Integer;
    if-nez v23, :cond_4

    const-string v18, "0"

    :goto_3
    goto :goto_1

    :cond_4
    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    goto :goto_3

    .line 330
    .end local v23    # "mediaCount":Ljava/lang/Integer;
    .end local v24    # "set":Lcom/oneplus/gallery/media/MediaSet;
    :cond_5
    const v3, 0x7f02004a

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 331
    .local v12, "icon":Landroid/graphics/drawable/Drawable;
    const/4 v3, 0x0

    new-instance v9, Lcom/oneplus/gallery/BottomSheetView$BottomSheetItemInfo;

    const-wide/16 v10, -0xd

    const v4, 0x7f090034

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string v14, ""

    invoke-direct/range {v9 .. v14}, Lcom/oneplus/gallery/BottomSheetView$BottomSheetItemInfo;-><init>(JLandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-interface {v0, v3, v9}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 335
    const/16 v21, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery/OPGallery$3;->val$media:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v21

    if-ge v0, v3, :cond_6

    .line 337
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery/OPGallery$3;->val$media:Ljava/util/List;

    move/from16 v0, v21

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/gallery/media/Media;

    invoke-interface {v3}, Lcom/oneplus/gallery/media/Media;->isFavorite()Z

    move-result v3

    if-nez v3, :cond_7

    .line 339
    const/4 v3, 0x1

    new-instance v13, Lcom/oneplus/gallery/BottomSheetView$BottomSheetItemInfo;

    const-wide/16 v14, -0xf

    const v4, 0x7f020052

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    const v4, 0x7f090079

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v13 .. v18}, Lcom/oneplus/gallery/BottomSheetView$BottomSheetItemInfo;-><init>(JLandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-interface {v0, v3, v13}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 343
    :cond_6
    new-instance v19, Lcom/oneplus/gallery/BottomSheetView;

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-direct {v0, v2, v1}, Lcom/oneplus/gallery/BottomSheetView;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 344
    .local v19, "bottomSheet":Lcom/oneplus/gallery/BottomSheetView;
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/gallery/OPGallery$3;->val$galleryActivity:Lcom/oneplus/gallery/GalleryActivity;

    const-string v5, "bottom_sheet_background"

    invoke-virtual {v4, v5}, Lcom/oneplus/gallery/GalleryActivity;->getThemeColor(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/oneplus/gallery/BottomSheetView;->setBottomSheetBackground(Landroid/graphics/drawable/Drawable;)V

    .line 345
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery/OPGallery$3;->val$galleryActivity:Lcom/oneplus/gallery/GalleryActivity;

    const-string v4, "bottom_sheet_title_text"

    invoke-virtual {v3, v4}, Lcom/oneplus/gallery/GalleryActivity;->getThemeColor(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/oneplus/gallery/BottomSheetView;->setListTitleTextColor(I)V

    .line 346
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery/OPGallery$3;->val$galleryActivity:Lcom/oneplus/gallery/GalleryActivity;

    const-string v4, "bottom_sheet_item_text"

    invoke-virtual {v3, v4}, Lcom/oneplus/gallery/GalleryActivity;->getThemeColor(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/oneplus/gallery/BottomSheetView;->setItemTitleTextColor(I)V

    .line 347
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery/OPGallery$3;->val$galleryActivity:Lcom/oneplus/gallery/GalleryActivity;

    const-string v4, "bottom_sheet_item_text_secondary"

    invoke-virtual {v3, v4}, Lcom/oneplus/gallery/GalleryActivity;->getThemeColor(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/oneplus/gallery/BottomSheetView;->setItemCountTextColor(I)V

    .line 350
    new-instance v20, Landroid/app/Dialog;

    const v3, 0x7f0a0006

    move-object/from16 v0, v20

    invoke-direct {v0, v2, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 351
    .local v20, "dialog":Landroid/app/Dialog;
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const v5, 0x1010032

    aput v5, v3, v4

    invoke-virtual {v2, v3}, Landroid/app/Activity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v25

    .line 352
    .local v25, "typedArray":Landroid/content/res/TypedArray;
    invoke-virtual/range {v20 .. v20}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x0

    const/high16 v5, 0x3f000000    # 0.5f

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/Window;->setDimAmount(F)V

    .line 353
    invoke-virtual/range {v20 .. v20}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 354
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 357
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery/OPGallery$3;->val$bottomSheetListener:Lcom/oneplus/gallery/BottomSheetView$BottomSheetListener;

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/oneplus/gallery/BottomSheetView;->setBottomSheetListener(Lcom/oneplus/gallery/BottomSheetView$BottomSheetListener;)V

    .line 360
    return-object v20

    .line 335
    .end local v19    # "bottomSheet":Lcom/oneplus/gallery/BottomSheetView;
    .end local v20    # "dialog":Landroid/app/Dialog;
    .end local v25    # "typedArray":Landroid/content/res/TypedArray;
    :cond_7
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_4
.end method
