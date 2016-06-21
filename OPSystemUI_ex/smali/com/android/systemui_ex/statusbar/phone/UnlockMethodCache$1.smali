.class Lcom/android/systemui_ex/statusbar/phone/UnlockMethodCache$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "UnlockMethodCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/statusbar/phone/UnlockMethodCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/statusbar/phone/UnlockMethodCache;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/statusbar/phone/UnlockMethodCache;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/phone/UnlockMethodCache$1;->this$0:Lcom/android/systemui_ex/statusbar/phone/UnlockMethodCache;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFaceUnlockStateChanged(ZI)V
    .locals 2
    .param p1, "running"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/UnlockMethodCache$1;->this$0:Lcom/android/systemui_ex/statusbar/phone/UnlockMethodCache;

    const/4 v1, 0x0

    # invokes: Lcom/android/systemui_ex/statusbar/phone/UnlockMethodCache;->update(Z)V
    invoke-static {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/UnlockMethodCache;->access$000(Lcom/android/systemui_ex/statusbar/phone/UnlockMethodCache;Z)V

    .line 135
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/UnlockMethodCache$1;->this$0:Lcom/android/systemui_ex/statusbar/phone/UnlockMethodCache;

    const/4 v1, 0x0

    # invokes: Lcom/android/systemui_ex/statusbar/phone/UnlockMethodCache;->update(Z)V
    invoke-static {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/UnlockMethodCache;->access$000(Lcom/android/systemui_ex/statusbar/phone/UnlockMethodCache;Z)V

    .line 125
    return-void
.end method

.method public onTrustChanged(I)V
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/UnlockMethodCache$1;->this$0:Lcom/android/systemui_ex/statusbar/phone/UnlockMethodCache;

    const/4 v1, 0x0

    # invokes: Lcom/android/systemui_ex/statusbar/phone/UnlockMethodCache;->update(Z)V
    invoke-static {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/UnlockMethodCache;->access$000(Lcom/android/systemui_ex/statusbar/phone/UnlockMethodCache;Z)V

    .line 115
    return-void
.end method

.method public onTrustManagedChanged(I)V
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/UnlockMethodCache$1;->this$0:Lcom/android/systemui_ex/statusbar/phone/UnlockMethodCache;

    const/4 v1, 0x0

    # invokes: Lcom/android/systemui_ex/statusbar/phone/UnlockMethodCache;->update(Z)V
    invoke-static {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/UnlockMethodCache;->access$000(Lcom/android/systemui_ex/statusbar/phone/UnlockMethodCache;Z)V

    .line 120
    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/UnlockMethodCache$1;->this$0:Lcom/android/systemui_ex/statusbar/phone/UnlockMethodCache;

    const/4 v1, 0x0

    # invokes: Lcom/android/systemui_ex/statusbar/phone/UnlockMethodCache;->update(Z)V
    invoke-static {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/UnlockMethodCache;->access$000(Lcom/android/systemui_ex/statusbar/phone/UnlockMethodCache;Z)V

    .line 110
    return-void
.end method
