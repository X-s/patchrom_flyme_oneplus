.class Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper$8;
.super Ljava/lang/Object;
.source "KeyguardAffordanceHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->animateBeforeLaunch(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;

.field final synthetic val$vel:F


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;F)V
    .locals 0

    .prologue
    .line 456
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper$8;->this$0:Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;

    iput p2, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper$8;->val$vel:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 459
    const-string v0, "Affordance"

    const-string v1, "fling to launch Camera"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper$8;->this$0:Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;

    iget v1, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper$8;->val$vel:F

    const/4 v2, 0x0

    # invokes: Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->fling(FZ)V
    invoke-static {v0, v1, v2}, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->access$800(Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;FZ)V

    .line 461
    return-void
.end method
