.class Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView$12;
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
    .line 1207
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView$12;->this$0:Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1210
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView$12;->this$0:Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;->setVisibility(I)V

    .line 1211
    return-void
.end method
