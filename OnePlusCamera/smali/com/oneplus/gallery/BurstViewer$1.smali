.class Lcom/oneplus/gallery/BurstViewer$1;
.super Ljava/lang/Object;
.source "BurstViewer.java"

# interfaces
.implements Lcom/oneplus/camera/KeyEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/BurstViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/BurstViewer;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/BurstViewer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/gallery/BurstViewer;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/oneplus/gallery/BurstViewer$1;->this$0:Lcom/oneplus/gallery/BurstViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyDown(ILandroid/view/KeyEvent;)Lcom/oneplus/camera/KeyEventHandler$KeyResult;
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 135
    sget-object v0, Lcom/oneplus/camera/KeyEventHandler$KeyResult;->NOT_HANDLED:Lcom/oneplus/camera/KeyEventHandler$KeyResult;

    return-object v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Lcom/oneplus/camera/KeyEventHandler$KeyResult;
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/oneplus/gallery/BurstViewer$1;->this$0:Lcom/oneplus/gallery/BurstViewer;

    invoke-static {v0, p1, p2}, Lcom/oneplus/gallery/BurstViewer;->-wrap2(Lcom/oneplus/gallery/BurstViewer;ILandroid/view/KeyEvent;)Lcom/oneplus/camera/KeyEventHandler$KeyResult;

    move-result-object v0

    return-object v0
.end method
