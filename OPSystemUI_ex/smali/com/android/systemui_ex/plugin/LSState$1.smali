.class Lcom/android/systemui_ex/plugin/LSState$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "LSState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/plugin/LSState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/plugin/LSState;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/plugin/LSState;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/systemui_ex/plugin/LSState$1;->this$0:Lcom/android/systemui_ex/plugin/LSState;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyguardBouncerChanged(Z)V
    .locals 5
    .param p1, "bouncer"    # Z

    .prologue
    .line 115
    iget-object v4, p0, Lcom/android/systemui_ex/plugin/LSState$1;->this$0:Lcom/android/systemui_ex/plugin/LSState;

    iget-object v0, v4, Lcom/android/systemui_ex/plugin/LSState;->mControls:[Lcom/android/systemui_ex/plugin/BaseCtrl;

    .local v0, "arr$":[Lcom/android/systemui_ex/plugin/BaseCtrl;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 116
    .local v1, "ctrl":Lcom/android/systemui_ex/plugin/BaseCtrl;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/systemui_ex/plugin/BaseCtrl;->isEnable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 117
    invoke-virtual {v1, p1}, Lcom/android/systemui_ex/plugin/BaseCtrl;->onKeyguardBouncerChanged(Z)V

    .line 115
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 120
    .end local v1    # "ctrl":Lcom/android/systemui_ex/plugin/BaseCtrl;
    :cond_1
    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 5
    .param p1, "showing"    # Z

    .prologue
    .line 125
    iget-object v4, p0, Lcom/android/systemui_ex/plugin/LSState$1;->this$0:Lcom/android/systemui_ex/plugin/LSState;

    iget-object v0, v4, Lcom/android/systemui_ex/plugin/LSState;->mControls:[Lcom/android/systemui_ex/plugin/BaseCtrl;

    .local v0, "arr$":[Lcom/android/systemui_ex/plugin/BaseCtrl;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 126
    .local v1, "ctrl":Lcom/android/systemui_ex/plugin/BaseCtrl;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/systemui_ex/plugin/BaseCtrl;->isEnable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 127
    invoke-virtual {v1, p1}, Lcom/android/systemui_ex/plugin/BaseCtrl;->onKeyguardVisibilityChanged(Z)V

    .line 125
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 130
    .end local v1    # "ctrl":Lcom/android/systemui_ex/plugin/BaseCtrl;
    :cond_1
    return-void
.end method

.method public onScreenTurnedOff(I)V
    .locals 5
    .param p1, "why"    # I

    .prologue
    .line 106
    iget-object v4, p0, Lcom/android/systemui_ex/plugin/LSState$1;->this$0:Lcom/android/systemui_ex/plugin/LSState;

    iget-object v0, v4, Lcom/android/systemui_ex/plugin/LSState;->mControls:[Lcom/android/systemui_ex/plugin/BaseCtrl;

    .local v0, "arr$":[Lcom/android/systemui_ex/plugin/BaseCtrl;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 107
    .local v1, "ctrl":Lcom/android/systemui_ex/plugin/BaseCtrl;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/systemui_ex/plugin/BaseCtrl;->isEnable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 108
    invoke-virtual {v1, p1}, Lcom/android/systemui_ex/plugin/BaseCtrl;->onScreenTurnedOff(I)V

    .line 106
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 111
    .end local v1    # "ctrl":Lcom/android/systemui_ex/plugin/BaseCtrl;
    :cond_1
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 5

    .prologue
    .line 97
    iget-object v4, p0, Lcom/android/systemui_ex/plugin/LSState$1;->this$0:Lcom/android/systemui_ex/plugin/LSState;

    iget-object v0, v4, Lcom/android/systemui_ex/plugin/LSState;->mControls:[Lcom/android/systemui_ex/plugin/BaseCtrl;

    .local v0, "arr$":[Lcom/android/systemui_ex/plugin/BaseCtrl;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 98
    .local v1, "ctrl":Lcom/android/systemui_ex/plugin/BaseCtrl;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/systemui_ex/plugin/BaseCtrl;->isEnable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 99
    invoke-virtual {v1}, Lcom/android/systemui_ex/plugin/BaseCtrl;->onScreenTurnedOn()V

    .line 97
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 102
    .end local v1    # "ctrl":Lcom/android/systemui_ex/plugin/BaseCtrl;
    :cond_1
    return-void
.end method
