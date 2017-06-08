.class Lcom/android/settings_ex/DisplaySettings$7;
.super Ljava/lang/Object;
.source "DisplaySettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/DisplaySettings;->saveBrightnessDataBase(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/DisplaySettings;

.field final synthetic val$brightness:I


# direct methods
.method constructor <init>(Lcom/android/settings_ex/DisplaySettings;I)V
    .locals 0

    .prologue
    .line 1494
    iput-object p1, p0, Lcom/android/settings_ex/DisplaySettings$7;->this$0:Lcom/android/settings_ex/DisplaySettings;

    iput p2, p0, Lcom/android/settings_ex/DisplaySettings$7;->val$brightness:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v0, 0x2

    .line 1500
    iget v1, p0, Lcom/android/settings_ex/DisplaySettings$7;->val$brightness:I

    if-ge v1, v0, :cond_0

    .line 1501
    .local v0, "brightnessValue":I
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings$7;->this$0:Lcom/android/settings_ex/DisplaySettings;

    # getter for: Lcom/android/settings_ex/DisplaySettings;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings_ex/DisplaySettings;->access$000(Lcom/android/settings_ex/DisplaySettings;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1505
    return-void

    .line 1500
    .end local v0    # "brightnessValue":I
    :cond_0
    iget v0, p0, Lcom/android/settings_ex/DisplaySettings$7;->val$brightness:I

    goto :goto_0
.end method
