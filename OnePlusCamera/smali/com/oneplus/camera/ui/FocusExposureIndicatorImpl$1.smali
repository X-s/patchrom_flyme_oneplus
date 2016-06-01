.class Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$1;
.super Ljava/lang/Object;
.source "FocusExposureIndicatorImpl.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->onInitialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;)V
    .locals 0

    .prologue
    .line 820
    iput-object p1, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$1;->this$0:Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 824
    iget-object v0, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$1;->this$0:Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;

    # invokes: Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->onExposureCompDragIconTouch(Landroid/view/MotionEvent;)Z
    invoke-static {v0, p2}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->access$000(Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
