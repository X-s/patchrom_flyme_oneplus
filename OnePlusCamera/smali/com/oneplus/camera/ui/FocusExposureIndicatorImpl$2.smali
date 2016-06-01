.class Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$2;
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
    .line 828
    iput-object p1, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$2;->this$0:Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 832
    iget-object v0, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$2;->this$0:Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;

    iget-object v1, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$2;->this$0:Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;

    # getter for: Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->m_IndicatorContainer:Landroid/view/View;
    invoke-static {v1}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->access$100(Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;)Landroid/view/View;

    move-result-object v1

    # invokes: Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->onIndicatorIconTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    invoke-static {v0, v1, p2}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->access$200(Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
