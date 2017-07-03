.class Lcom/oneplus/gallery/OPGallery$11$1;
.super Ljava/lang/Object;
.source "OPGallery.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/OPGallery$11;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/gallery/OPGallery$11;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/OPGallery$11;)V
    .locals 0

    .prologue
    .line 946
    iput-object p1, p0, Lcom/oneplus/gallery/OPGallery$11$1;->this$1:Lcom/oneplus/gallery/OPGallery$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 950
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 951
    return-void
.end method
