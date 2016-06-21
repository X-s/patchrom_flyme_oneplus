.class Lcom/android/systemui_ex/statusbar/phone/PanelView$7;
.super Ljava/lang/Object;
.source "PanelView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/statusbar/phone/PanelView;
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
    .line 1029
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView$7;->this$0:Lcom/android/systemui_ex/statusbar/phone/PanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1032
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView$7;->this$0:Lcom/android/systemui_ex/statusbar/phone/PanelView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->fling(FZ)V

    .line 1033
    return-void
.end method
