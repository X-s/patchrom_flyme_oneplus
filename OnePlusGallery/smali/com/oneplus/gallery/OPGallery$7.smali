.class Lcom/oneplus/gallery/OPGallery$7;
.super Lcom/oneplus/gallery/GalleryDialogFragment;
.source "OPGallery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/OPGallery;->createAlbum(Lcom/oneplus/base/OperationCallback;Landroid/os/Handler;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/OPGallery;

.field final synthetic val$callbackHelper:Lcom/oneplus/base/OperationCallbackHelper;

.field final synthetic val$galleryActivity:Lcom/oneplus/gallery/GalleryActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/OPGallery;Lcom/oneplus/gallery/GalleryActivity;Lcom/oneplus/base/OperationCallbackHelper;)V
    .locals 0

    .prologue
    .line 526
    iput-object p1, p0, Lcom/oneplus/gallery/OPGallery$7;->this$0:Lcom/oneplus/gallery/OPGallery;

    iput-object p2, p0, Lcom/oneplus/gallery/OPGallery$7;->val$galleryActivity:Lcom/oneplus/gallery/GalleryActivity;

    iput-object p3, p0, Lcom/oneplus/gallery/OPGallery$7;->val$callbackHelper:Lcom/oneplus/base/OperationCallbackHelper;

    invoke-direct {p0}, Lcom/oneplus/gallery/GalleryDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 530
    iget-object v3, p0, Lcom/oneplus/gallery/OPGallery$7;->val$galleryActivity:Lcom/oneplus/gallery/GalleryActivity;

    sget-object v4, Lcom/oneplus/gallery/GalleryActivity;->PROP_IS_BLACK_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v3, v4}, Lcom/oneplus/gallery/GalleryActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 531
    .local v2, "isDarkMode":Z
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/oneplus/gallery/OPGallery$7;->getActivity()Landroid/app/Activity;

    move-result-object v4

    if-eqz v2, :cond_0

    const v3, 0x7f0a000d

    :goto_0
    invoke-direct {v0, v4, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 532
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v3, 0x7f090034

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 533
    const v3, 0x7f030007

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(I)Landroid/app/AlertDialog$Builder;

    .line 534
    const v3, 0x7f090035

    new-instance v4, Lcom/oneplus/gallery/OPGallery$7$1;

    invoke-direct {v4, p0}, Lcom/oneplus/gallery/OPGallery$7$1;-><init>(Lcom/oneplus/gallery/OPGallery$7;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 584
    const v3, 0x7f090036

    new-instance v4, Lcom/oneplus/gallery/OPGallery$7$2;

    invoke-direct {v4, p0}, Lcom/oneplus/gallery/OPGallery$7$2;-><init>(Lcom/oneplus/gallery/OPGallery$7;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 594
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 595
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 596
    return-object v1

    .line 531
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "dialog":Landroid/app/AlertDialog;
    :cond_0
    const v3, 0x7f0a000b

    goto :goto_0
.end method
