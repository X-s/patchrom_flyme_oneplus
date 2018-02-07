.class final Lcom/android/settings_ex/bluetooth/Utils$1;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Lcom/android/settings_exlib/bluetooth/Utils$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/bluetooth/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShowError(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "messageResId"    # I

    .prologue
    .line 142
    invoke-static {p1, p2, p3}, Lcom/android/settings_ex/bluetooth/Utils;->showError(Landroid/content/Context;Ljava/lang/String;I)V

    .line 141
    return-void
.end method
