.class Lcom/oneplus/gallery/OPGallery$14;
.super Lcom/oneplus/gallery/GalleryDialogFragment;
.source "OPGallery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/OPGallery;->renameMediaSet(Lcom/oneplus/gallery/media/MediaSet;Lcom/oneplus/base/OperationCallback;Landroid/os/Handler;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/OPGallery;

.field final synthetic val$albumMediaSet:Lcom/oneplus/gallery/media/AlbumMediaSet;

.field final synthetic val$callbackHelper:Lcom/oneplus/base/OperationCallbackHelper;

.field final synthetic val$galleryActivity:Lcom/oneplus/gallery/GalleryActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/OPGallery;Lcom/oneplus/gallery/GalleryActivity;Lcom/oneplus/gallery/media/AlbumMediaSet;Lcom/oneplus/base/OperationCallbackHelper;)V
    .locals 0

    .prologue
    .line 1258
    iput-object p1, p0, Lcom/oneplus/gallery/OPGallery$14;->this$0:Lcom/oneplus/gallery/OPGallery;

    iput-object p2, p0, Lcom/oneplus/gallery/OPGallery$14;->val$galleryActivity:Lcom/oneplus/gallery/GalleryActivity;

    iput-object p3, p0, Lcom/oneplus/gallery/OPGallery$14;->val$albumMediaSet:Lcom/oneplus/gallery/media/AlbumMediaSet;

    iput-object p4, p0, Lcom/oneplus/gallery/OPGallery$14;->val$callbackHelper:Lcom/oneplus/base/OperationCallbackHelper;

    invoke-direct {p0}, Lcom/oneplus/gallery/GalleryDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1262
    iget-object v3, p0, Lcom/oneplus/gallery/OPGallery$14;->val$galleryActivity:Lcom/oneplus/gallery/GalleryActivity;

    sget-object v4, Lcom/oneplus/gallery/GalleryActivity;->PROP_IS_BLACK_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v3, v4}, Lcom/oneplus/gallery/GalleryActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 1263
    .local v2, "isDarkMode":Z
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/oneplus/gallery/OPGallery$14;->getActivity()Landroid/app/Activity;

    move-result-object v4

    if-eqz v2, :cond_0

    const v3, 0x7f0a000d

    :goto_0
    invoke-direct {v0, v4, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 1264
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v3, 0x7f090016

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1265
    const v3, 0x7f03000b

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(I)Landroid/app/AlertDialog$Builder;

    .line 1266
    const v3, 0x7f09000e

    new-instance v4, Lcom/oneplus/gallery/OPGallery$14$1;

    invoke-direct {v4, p0}, Lcom/oneplus/gallery/OPGallery$14$1;-><init>(Lcom/oneplus/gallery/OPGallery$14;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1302
    const/high16 v3, 0x1040000

    new-instance v4, Lcom/oneplus/gallery/OPGallery$14$2;

    invoke-direct {v4, p0}, Lcom/oneplus/gallery/OPGallery$14$2;-><init>(Lcom/oneplus/gallery/OPGallery$14;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1312
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1313
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 1314
    return-object v1

    .line 1263
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "dialog":Landroid/app/AlertDialog;
    :cond_0
    const v3, 0x7f0a000b

    goto :goto_0
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 1320
    invoke-super {p0}, Lcom/oneplus/gallery/GalleryDialogFragment;->onResume()V

    .line 1323
    invoke-virtual {p0}, Lcom/oneplus/gallery/OPGallery$14;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    .line 1324
    .local v0, "dialog":Landroid/app/AlertDialog;
    const v3, 0x7f060030

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 1325
    .local v1, "editText":Landroid/widget/EditText;
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1326
    .local v2, "inputName":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1327
    iget-object v3, p0, Lcom/oneplus/gallery/OPGallery$14;->val$albumMediaSet:Lcom/oneplus/gallery/media/AlbumMediaSet;

    sget-object v4, Lcom/oneplus/gallery/media/AlbumMediaSet;->PROP_NAME:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v3, v4}, Lcom/oneplus/gallery/media/AlbumMediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "inputName":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 1328
    .restart local v2    # "inputName":Ljava/lang/String;
    :cond_0
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1329
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 1330
    return-void
.end method
