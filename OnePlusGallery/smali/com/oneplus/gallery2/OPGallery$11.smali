.class Lcom/oneplus/gallery2/OPGallery$11;
.super Lcom/oneplus/gallery2/GalleryDialogFragment;
.source "OPGallery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/OPGallery;->renameMediaSet(Lcom/oneplus/gallery2/media/MediaSet;Lcom/oneplus/base/OperationCallback;Landroid/os/Handler;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/OPGallery;

.field final synthetic val$albumMediaSet:Lcom/oneplus/gallery2/media/AlbumMediaSet;

.field final synthetic val$callbackHelper:Lcom/oneplus/base/OperationCallbackHelper;

.field final synthetic val$galleryActivity:Lcom/oneplus/gallery2/GalleryActivity;

.field final synthetic val$mediaSet:Lcom/oneplus/gallery2/media/MediaSet;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/OPGallery;Lcom/oneplus/gallery2/GalleryActivity;Lcom/oneplus/base/OperationCallbackHelper;Lcom/oneplus/gallery2/media/AlbumMediaSet;Lcom/oneplus/gallery2/media/MediaSet;)V
    .locals 0

    .prologue
    .line 1237
    iput-object p1, p0, Lcom/oneplus/gallery2/OPGallery$11;->this$0:Lcom/oneplus/gallery2/OPGallery;

    iput-object p2, p0, Lcom/oneplus/gallery2/OPGallery$11;->val$galleryActivity:Lcom/oneplus/gallery2/GalleryActivity;

    iput-object p3, p0, Lcom/oneplus/gallery2/OPGallery$11;->val$callbackHelper:Lcom/oneplus/base/OperationCallbackHelper;

    iput-object p4, p0, Lcom/oneplus/gallery2/OPGallery$11;->val$albumMediaSet:Lcom/oneplus/gallery2/media/AlbumMediaSet;

    iput-object p5, p0, Lcom/oneplus/gallery2/OPGallery$11;->val$mediaSet:Lcom/oneplus/gallery2/media/MediaSet;

    invoke-direct {p0}, Lcom/oneplus/gallery2/GalleryDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1241
    iget-object v3, p0, Lcom/oneplus/gallery2/OPGallery$11;->val$galleryActivity:Lcom/oneplus/gallery2/GalleryActivity;

    sget-object v4, Lcom/oneplus/gallery2/GalleryActivity;->PROP_IS_BLACK_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v3, v4}, Lcom/oneplus/gallery2/GalleryActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 1242
    .local v2, "isDarkMode":Z
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/oneplus/gallery2/OPGallery$11;->getActivity()Landroid/app/Activity;

    move-result-object v4

    if-eqz v2, :cond_0

    const v3, 0x7f0a000d

    :goto_0
    invoke-direct {v0, v4, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 1243
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v3, 0x7f090016

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1244
    const v3, 0x7f03000b

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(I)Landroid/app/AlertDialog$Builder;

    .line 1245
    const v3, 0x7f09000e

    new-instance v4, Lcom/oneplus/gallery2/OPGallery$11$1;

    invoke-direct {v4, p0}, Lcom/oneplus/gallery2/OPGallery$11$1;-><init>(Lcom/oneplus/gallery2/OPGallery$11;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1284
    const/high16 v3, 0x1040000

    new-instance v4, Lcom/oneplus/gallery2/OPGallery$11$2;

    invoke-direct {v4, p0}, Lcom/oneplus/gallery2/OPGallery$11$2;-><init>(Lcom/oneplus/gallery2/OPGallery$11;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1294
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1295
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 1296
    return-object v1

    .line 1242
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "dialog":Landroid/app/AlertDialog;
    :cond_0
    const v3, 0x7f0a000b

    goto :goto_0
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 1302
    invoke-super {p0}, Lcom/oneplus/gallery2/GalleryDialogFragment;->onResume()V

    .line 1305
    invoke-virtual {p0}, Lcom/oneplus/gallery2/OPGallery$11;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    .line 1306
    .local v0, "dialog":Landroid/app/AlertDialog;
    const v3, 0x7f060030

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 1307
    .local v1, "editText":Landroid/widget/EditText;
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1308
    .local v2, "inputName":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1309
    iget-object v3, p0, Lcom/oneplus/gallery2/OPGallery$11;->val$albumMediaSet:Lcom/oneplus/gallery2/media/AlbumMediaSet;

    sget-object v4, Lcom/oneplus/gallery2/media/AlbumMediaSet;->PROP_NAME:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v3, v4}, Lcom/oneplus/gallery2/media/AlbumMediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "inputName":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 1310
    .restart local v2    # "inputName":Ljava/lang/String;
    :cond_0
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1311
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 1312
    return-void
.end method
