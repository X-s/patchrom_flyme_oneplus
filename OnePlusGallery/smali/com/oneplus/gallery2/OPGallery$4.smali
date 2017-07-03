.class Lcom/oneplus/gallery2/OPGallery$4;
.super Lcom/oneplus/gallery2/GalleryDialogFragment;
.source "OPGallery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/OPGallery;->createAlbum(Lcom/oneplus/base/OperationCallback;Landroid/os/Handler;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/OPGallery;

.field final synthetic val$callbackHelper:Lcom/oneplus/base/OperationCallbackHelper;

.field final synthetic val$galleryActivity:Lcom/oneplus/gallery2/GalleryActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/OPGallery;Lcom/oneplus/gallery2/GalleryActivity;Lcom/oneplus/base/OperationCallbackHelper;)V
    .locals 0

    .prologue
    .line 481
    iput-object p1, p0, Lcom/oneplus/gallery2/OPGallery$4;->this$0:Lcom/oneplus/gallery2/OPGallery;

    iput-object p2, p0, Lcom/oneplus/gallery2/OPGallery$4;->val$galleryActivity:Lcom/oneplus/gallery2/GalleryActivity;

    iput-object p3, p0, Lcom/oneplus/gallery2/OPGallery$4;->val$callbackHelper:Lcom/oneplus/base/OperationCallbackHelper;

    invoke-direct {p0}, Lcom/oneplus/gallery2/GalleryDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 485
    iget-object v3, p0, Lcom/oneplus/gallery2/OPGallery$4;->val$galleryActivity:Lcom/oneplus/gallery2/GalleryActivity;

    sget-object v4, Lcom/oneplus/gallery2/GalleryActivity;->PROP_IS_BLACK_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v3, v4}, Lcom/oneplus/gallery2/GalleryActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 486
    .local v2, "isDarkMode":Z
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/oneplus/gallery2/OPGallery$4;->getActivity()Landroid/app/Activity;

    move-result-object v4

    if-eqz v2, :cond_0

    const v3, 0x7f0a000d

    :goto_0
    invoke-direct {v0, v4, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 487
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v3, 0x7f090034

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 488
    const v3, 0x7f030007

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(I)Landroid/app/AlertDialog$Builder;

    .line 489
    const v3, 0x7f090035

    new-instance v4, Lcom/oneplus/gallery2/OPGallery$4$1;

    invoke-direct {v4, p0}, Lcom/oneplus/gallery2/OPGallery$4$1;-><init>(Lcom/oneplus/gallery2/OPGallery$4;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 538
    const v3, 0x7f090036

    new-instance v4, Lcom/oneplus/gallery2/OPGallery$4$2;

    invoke-direct {v4, p0}, Lcom/oneplus/gallery2/OPGallery$4$2;-><init>(Lcom/oneplus/gallery2/OPGallery$4;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 548
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 549
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 550
    return-object v1

    .line 486
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "dialog":Landroid/app/AlertDialog;
    :cond_0
    const v3, 0x7f0a000b

    goto :goto_0
.end method
