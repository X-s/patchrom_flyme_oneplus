.class Lcom/android/systemui_ex/controlpanel/OPControlPanel$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "OPControlPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui_ex/controlpanel/OPControlPanel;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$1;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$1;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    # getter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$000(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFling velocityY:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui_ex/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$1;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    # setter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mFlingVelocity:F
    invoke-static {v0, p4}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$102(Lcom/android/systemui_ex/controlpanel/OPControlPanel;F)F

    .line 119
    const/4 v0, 0x1

    return v0
.end method
