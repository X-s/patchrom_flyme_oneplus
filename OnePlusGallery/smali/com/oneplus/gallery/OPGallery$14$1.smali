.class Lcom/oneplus/gallery/OPGallery$14$1;
.super Ljava/lang/Object;
.source "OPGallery.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/OPGallery$14;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/gallery/OPGallery$14;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/OPGallery$14;)V
    .locals 0

    .prologue
    .line 1267
    iput-object p1, p0, Lcom/oneplus/gallery/OPGallery$14$1;->this$1:Lcom/oneplus/gallery/OPGallery$14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1271
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 1272
    check-cast p1, Landroid/app/AlertDialog;

    .end local p1    # "dialog":Landroid/content/DialogInterface;
    const v2, 0x7f060030

    invoke-virtual {p1, v2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 1273
    .local v1, "editText":Landroid/widget/EditText;
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1274
    .local v0, "displayName":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1275
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1276
    invoke-static {}, Lcom/oneplus/gallery/GalleryApplication;->current()Lcom/oneplus/gallery/GalleryApplication;

    move-result-object v2

    const v3, 0x7f090037

    invoke-virtual {v2, v3}, Lcom/oneplus/gallery/GalleryApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1277
    :cond_0
    iget-object v2, p0, Lcom/oneplus/gallery/OPGallery$14$1;->this$1:Lcom/oneplus/gallery/OPGallery$14;

    iget-object v2, v2, Lcom/oneplus/gallery/OPGallery$14;->val$albumMediaSet:Lcom/oneplus/gallery/media/AlbumMediaSet;

    new-instance v3, Lcom/oneplus/gallery/OPGallery$14$1$1;

    invoke-direct {v3, p0}, Lcom/oneplus/gallery/OPGallery$14$1$1;-><init>(Lcom/oneplus/gallery/OPGallery$14$1;)V

    invoke-virtual {v2, v0, v3}, Lcom/oneplus/gallery/media/AlbumMediaSet;->rename(Ljava/lang/String;Lcom/oneplus/base/OperationCallback;)V

    .line 1300
    return-void
.end method
