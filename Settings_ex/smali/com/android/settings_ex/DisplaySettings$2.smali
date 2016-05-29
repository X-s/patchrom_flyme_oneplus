.class Lcom/android/settings_ex/DisplaySettings$2;
.super Ljava/lang/Object;
.source "DisplaySettings.java"

# interfaces
.implements Lcom/android/settings_ex/notification/DropDownPreference$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/DisplaySettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/DisplaySettings;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/DisplaySettings;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 324
    iput-object p1, p0, Lcom/android/settings_ex/DisplaySettings$2;->this$0:Lcom/android/settings_ex/DisplaySettings;

    iput-object p2, p0, Lcom/android/settings_ex/DisplaySettings$2;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(ILjava/lang/Object;)Z
    .locals 2
    .param p1, "pos"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 327
    iget-object v0, p0, Lcom/android/settings_ex/DisplaySettings$2;->val$activity:Landroid/app/Activity;

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/view/RotationPolicy;->setRotationLock(Landroid/content/Context;Z)V

    .line 328
    const/4 v0, 0x1

    return v0
.end method
