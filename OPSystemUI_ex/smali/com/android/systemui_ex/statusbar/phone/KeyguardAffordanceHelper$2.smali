.class Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper$2;
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
    .line 104
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper$2;->this$0:Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper$2;->this$0:Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;

    # getter for: Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mCallback:Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper$Callback;
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->access$200(Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;)Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper$Callback;->onAnimationToSideEnded()V

    .line 108
    return-void
.end method
