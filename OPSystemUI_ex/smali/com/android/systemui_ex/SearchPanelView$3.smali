.class Lcom/android/systemui_ex/SearchPanelView$3;
.super Ljava/lang/Object;
.source "SearchPanelView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui_ex/SearchPanelView;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/SearchPanelView;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/SearchPanelView;)V
    .locals 0

    .prologue
    .line 300
    iput-object p1, p0, Lcom/android/systemui_ex/SearchPanelView$3;->this$0:Lcom/android/systemui_ex/SearchPanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/systemui_ex/SearchPanelView$3;->this$0:Lcom/android/systemui_ex/SearchPanelView;

    # invokes: Lcom/android/systemui_ex/SearchPanelView;->startExitAnimation()V
    invoke-static {v0}, Lcom/android/systemui_ex/SearchPanelView;->access$200(Lcom/android/systemui_ex/SearchPanelView;)V

    .line 304
    return-void
.end method
