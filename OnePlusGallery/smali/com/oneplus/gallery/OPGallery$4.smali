.class Lcom/oneplus/gallery/OPGallery$4;
.super Ljava/lang/Object;
.source "OPGallery.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/OPGallery;->addToInternal(Ljava/util/List;Lcom/oneplus/gallery/media/MediaSet;Lcom/oneplus/base/OperationCallback;Landroid/os/Handler;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/OPGallery;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/OPGallery;)V
    .locals 0

    .prologue
    .line 400
    iput-object p1, p0, Lcom/oneplus/gallery/OPGallery$4;->this$0:Lcom/oneplus/gallery/OPGallery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 404
    const/4 v0, 0x1

    return v0
.end method
