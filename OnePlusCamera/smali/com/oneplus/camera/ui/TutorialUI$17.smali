.class Lcom/oneplus/camera/ui/TutorialUI$17;
.super Ljava/lang/Object;
.source "TutorialUI.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/TutorialUI;->inflateLayoutAndSetTouchReceiver(IZ)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/TutorialUI;

.field final synthetic val$hideTutorialUIWhenTouch:Z


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/TutorialUI;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/TutorialUI;
    .param p2, "val$hideTutorialUIWhenTouch"    # Z

    .prologue
    .line 427
    iput-object p1, p0, Lcom/oneplus/camera/ui/TutorialUI$17;->this$0:Lcom/oneplus/camera/ui/TutorialUI;

    iput-boolean p2, p0, Lcom/oneplus/camera/ui/TutorialUI$17;->val$hideTutorialUIWhenTouch:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 432
    iget-boolean v0, p0, Lcom/oneplus/camera/ui/TutorialUI$17;->val$hideTutorialUIWhenTouch:Z

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/oneplus/camera/ui/TutorialUI$17;->this$0:Lcom/oneplus/camera/ui/TutorialUI;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oneplus/camera/ui/TutorialUI;->-wrap0(Lcom/oneplus/camera/ui/TutorialUI;Z)V

    .line 434
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
