.class Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager$2;
.super Ljava/lang/Object;
.source "StatusBarKeyguardViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->checkIsKeyguardGoingAway(Lcom/android/internal/policy/IKeyguardShowCallback;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager$2;->this$0:Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager$2;->this$0:Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;

    const/4 v1, 0x0

    # setter for: Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mIsKeyguardGoingAway:Z
    invoke-static {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->access$202(Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;Z)Z

    .line 210
    return-void
.end method
