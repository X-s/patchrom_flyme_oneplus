.class Lcom/android/server/policy/EnableAccessibilityController$3;
.super Ljava/lang/Object;
.source "EnableAccessibilityController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/EnableAccessibilityController;-><init>(Landroid/content/Context;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/EnableAccessibilityController;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/server/policy/EnableAccessibilityController;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/EnableAccessibilityController;
    .param p2, "val$context"    # Landroid/content/Context;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/server/policy/EnableAccessibilityController$3;->this$0:Lcom/android/server/policy/EnableAccessibilityController;

    iput-object p2, p0, Lcom/android/server/policy/EnableAccessibilityController$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/server/policy/EnableAccessibilityController$3;->this$0:Lcom/android/server/policy/EnableAccessibilityController;

    iget-object v1, p0, Lcom/android/server/policy/EnableAccessibilityController$3;->val$context:Landroid/content/Context;

    sget-object v2, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-static {v1, v2}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/policy/EnableAccessibilityController;->-set0(Lcom/android/server/policy/EnableAccessibilityController;Landroid/media/Ringtone;)Landroid/media/Ringtone;

    .line 155
    iget-object v0, p0, Lcom/android/server/policy/EnableAccessibilityController$3;->this$0:Lcom/android/server/policy/EnableAccessibilityController;

    invoke-static {v0}, Lcom/android/server/policy/EnableAccessibilityController;->-get2(Lcom/android/server/policy/EnableAccessibilityController;)Landroid/media/Ringtone;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/android/server/policy/EnableAccessibilityController$3;->this$0:Lcom/android/server/policy/EnableAccessibilityController;

    invoke-static {v0}, Lcom/android/server/policy/EnableAccessibilityController;->-get2(Lcom/android/server/policy/EnableAccessibilityController;)Landroid/media/Ringtone;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 147
    :cond_0
    return-void
.end method
