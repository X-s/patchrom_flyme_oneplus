.class public abstract Lcom/android/systemui_ex/statusbar/NotificationViewWrapper;
.super Ljava/lang/Object;
.source "NotificationViewWrapper.java"


# instance fields
.field protected final mView:Landroid/view/View;


# direct methods
.method protected constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/NotificationViewWrapper;->mView:Landroid/view/View;

    .line 46
    return-void
.end method

.method public static wrap(Landroid/content/Context;Landroid/view/View;)Lcom/android/systemui_ex/statusbar/NotificationViewWrapper;
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 35
    const v0, 0x1020339

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 36
    new-instance v0, Lcom/android/systemui_ex/statusbar/NotificationMediaViewWrapper;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui_ex/statusbar/NotificationMediaViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 40
    :goto_0
    return-object v0

    .line 37
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x1020334

    if-ne v0, v1, :cond_1

    .line 38
    new-instance v0, Lcom/android/systemui_ex/statusbar/NotificationTemplateViewWrapper;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui_ex/statusbar/NotificationTemplateViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_0

    .line 40
    :cond_1
    new-instance v0, Lcom/android/systemui_ex/statusbar/NotificationCustomViewWrapper;

    invoke-direct {v0, p1}, Lcom/android/systemui_ex/statusbar/NotificationCustomViewWrapper;-><init>(Landroid/view/View;)V

    goto :goto_0
.end method


# virtual methods
.method public notifyContentUpdated()V
    .locals 0

    .prologue
    .line 60
    return-void
.end method

.method public abstract setDark(ZZJ)V
.end method
