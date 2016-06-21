.class Lcom/android/systemui_ex/threekey/ThreeKeyPanel$1;
.super Landroid/app/Dialog;
.source "ThreeKeyPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->initThreeKeyPanelLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/threekey/ThreeKeyPanel;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/threekey/ThreeKeyPanel;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel$1;->this$0:Lcom/android/systemui_ex/threekey/ThreeKeyPanel;

    invoke-direct {p0, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/android/systemui_ex/threekey/ThreeKeyPanel$1;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel$1;->this$0:Lcom/android/systemui_ex/threekey/ThreeKeyPanel;

    const-wide/16 v2, 0x0

    # invokes: Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->forceTimeout(J)V
    invoke-static {v0, v2, v3}, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->access$000(Lcom/android/systemui_ex/threekey/ThreeKeyPanel;J)V

    .line 128
    const/4 v0, 0x1

    .line 130
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
