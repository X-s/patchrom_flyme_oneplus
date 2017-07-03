.class Lcom/oneplus/gallery2/OPGallery$8;
.super Lcom/oneplus/gallery2/GalleryDialogFragment;
.source "OPGallery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/OPGallery;->deleteMediaSet(Ljava/util/Collection;Lcom/oneplus/gallery2/Gallery$MediaSetDeletionCallback;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/OPGallery;

.field final synthetic val$callback:Lcom/oneplus/gallery2/Gallery$MediaSetDeletionCallback;

.field final synthetic val$galleryActivity:Lcom/oneplus/gallery2/GalleryActivity;

.field final synthetic val$mediaSetList:Ljava/util/List;

.field final synthetic val$mediaSetToDelete:Ljava/util/Collection;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/OPGallery;Ljava/util/Collection;Lcom/oneplus/gallery2/GalleryActivity;Ljava/util/List;Lcom/oneplus/gallery2/Gallery$MediaSetDeletionCallback;)V
    .locals 0

    .prologue
    .line 888
    iput-object p1, p0, Lcom/oneplus/gallery2/OPGallery$8;->this$0:Lcom/oneplus/gallery2/OPGallery;

    iput-object p2, p0, Lcom/oneplus/gallery2/OPGallery$8;->val$mediaSetToDelete:Ljava/util/Collection;

    iput-object p3, p0, Lcom/oneplus/gallery2/OPGallery$8;->val$galleryActivity:Lcom/oneplus/gallery2/GalleryActivity;

    iput-object p4, p0, Lcom/oneplus/gallery2/OPGallery$8;->val$mediaSetList:Ljava/util/List;

    iput-object p5, p0, Lcom/oneplus/gallery2/OPGallery$8;->val$callback:Lcom/oneplus/gallery2/Gallery$MediaSetDeletionCallback;

    invoke-direct {p0}, Lcom/oneplus/gallery2/GalleryDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 892
    const/4 v3, 0x0

    .line 893
    .local v3, "title":Ljava/lang/String;
    const/4 v2, 0x0

    .line 894
    .local v2, "message":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/oneplus/gallery2/OPGallery$8;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 895
    .local v0, "activity":Landroid/app/Activity;
    iget-object v4, p0, Lcom/oneplus/gallery2/OPGallery$8;->val$mediaSetToDelete:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    if-ne v4, v6, :cond_0

    .line 897
    const v4, 0x7f09002b

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/oneplus/gallery2/OPGallery$8;->val$mediaSetToDelete:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v4

    aget-object v4, v4, v8

    check-cast v4, Lcom/oneplus/gallery2/media/MediaSet;

    sget-object v7, Lcom/oneplus/gallery2/media/MediaSet;->PROP_NAME:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v4, v7}, Lcom/oneplus/gallery2/media/MediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 903
    :goto_0
    const v4, 0x7f09001e

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 906
    iget-object v4, p0, Lcom/oneplus/gallery2/OPGallery$8;->val$galleryActivity:Lcom/oneplus/gallery2/GalleryActivity;

    sget-object v5, Lcom/oneplus/gallery2/GalleryActivity;->PROP_IS_BLACK_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v4, v5}, Lcom/oneplus/gallery2/GalleryActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 907
    .local v1, "isDarkMode":Z
    new-instance v5, Landroid/app/AlertDialog$Builder;

    if-eqz v1, :cond_1

    const v4, 0x7f0a000d

    :goto_1
    invoke-direct {v5, v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v5, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f090033

    new-instance v6, Lcom/oneplus/gallery2/OPGallery$8$2;

    invoke-direct {v6, p0}, Lcom/oneplus/gallery2/OPGallery$8$2;-><init>(Lcom/oneplus/gallery2/OPGallery$8;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/high16 v5, 0x1040000

    new-instance v6, Lcom/oneplus/gallery2/OPGallery$8$1;

    invoke-direct {v6, p0}, Lcom/oneplus/gallery2/OPGallery$8$1;-><init>(Lcom/oneplus/gallery2/OPGallery$8;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4

    .line 901
    .end local v1    # "isDarkMode":Z
    :cond_0
    const v4, 0x7f09002c

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/oneplus/gallery2/OPGallery$8;->val$mediaSetToDelete:Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 907
    .restart local v1    # "isDarkMode":Z
    :cond_1
    const v4, 0x7f0a000b

    goto :goto_1
.end method
