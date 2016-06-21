.class Lcom/android/systemui_ex/statusbar/phone/PanelView$4;
.super Ljava/lang/Object;
.source "PanelView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui_ex/statusbar/phone/PanelView;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/statusbar/phone/PanelView;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/statusbar/phone/PanelView;)V
    .locals 0

    .prologue
    .line 526
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView$4;->this$0:Lcom/android/systemui_ex/statusbar/phone/PanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 528
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView$4;->this$0:Lcom/android/systemui_ex/statusbar/phone/PanelView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mApplyDismissing:Z

    .line 529
    return-void
.end method
