.class Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper$7;
.super Ljava/lang/Object;
.source "KeyguardAffordanceHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;)V
    .locals 0

    .prologue
    .line 432
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper$7;->this$0:Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 434
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper$7;->this$0:Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;

    const/4 v1, 0x0

    # setter for: Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mLaunchingInProgress:Z
    invoke-static {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->access$702(Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;Z)Z

    .line 435
    return-void
.end method
