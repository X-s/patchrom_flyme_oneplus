.class Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView$18;
.super Ljava/lang/Object;
.source "NotificationPanelView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;)V
    .locals 0

    .prologue
    .line 2284
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView$18;->this$0:Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2287
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView$18;->this$0:Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->access$200(Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;)Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->updateEverything()V

    .line 2288
    return-void
.end method
