.class public Lcom/android/systemui_ex/statusbar/NotificationCustomViewWrapper;
.super Lcom/android/systemui_ex/statusbar/NotificationViewWrapper;
.source "NotificationCustomViewWrapper.java"


# instance fields
.field private final mInvertHelper:Lcom/android/systemui_ex/ViewInvertHelper;


# direct methods
.method protected constructor <init>(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/statusbar/NotificationViewWrapper;-><init>(Landroid/view/View;)V

    .line 33
    new-instance v0, Lcom/android/systemui_ex/ViewInvertHelper;

    const-wide/16 v2, 0x2bc

    invoke-direct {v0, p1, v2, v3}, Lcom/android/systemui_ex/ViewInvertHelper;-><init>(Landroid/view/View;J)V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/NotificationCustomViewWrapper;->mInvertHelper:Lcom/android/systemui_ex/ViewInvertHelper;

    .line 34
    return-void
.end method


# virtual methods
.method public setDark(ZZJ)V
    .locals 1
    .param p1, "dark"    # Z
    .param p2, "fade"    # Z
    .param p3, "delay"    # J

    .prologue
    .line 38
    if-eqz p2, :cond_0

    .line 39
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/NotificationCustomViewWrapper;->mInvertHelper:Lcom/android/systemui_ex/ViewInvertHelper;

    invoke-virtual {v0, p1, p3, p4}, Lcom/android/systemui_ex/ViewInvertHelper;->fade(ZJ)V

    .line 43
    :goto_0
    return-void

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/NotificationCustomViewWrapper;->mInvertHelper:Lcom/android/systemui_ex/ViewInvertHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui_ex/ViewInvertHelper;->update(Z)V

    goto :goto_0
.end method
