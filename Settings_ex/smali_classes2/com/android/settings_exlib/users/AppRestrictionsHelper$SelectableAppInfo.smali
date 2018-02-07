.class public Lcom/android/settings_exlib/users/AppRestrictionsHelper$SelectableAppInfo;
.super Ljava/lang/Object;
.source "AppRestrictionsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_exlib/users/AppRestrictionsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SelectableAppInfo"
.end annotation


# instance fields
.field public activityName:Ljava/lang/CharSequence;

.field public appName:Ljava/lang/CharSequence;

.field public icon:Landroid/graphics/drawable/Drawable;

.field public masterEntry:Lcom/android/settings_exlib/users/AppRestrictionsHelper$SelectableAppInfo;

.field public packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 356
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/settings_exlib/users/AppRestrictionsHelper$SelectableAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ": appName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_exlib/users/AppRestrictionsHelper$SelectableAppInfo;->appName:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "; activityName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_exlib/users/AppRestrictionsHelper$SelectableAppInfo;->activityName:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 366
    const-string/jumbo v1, "; icon="

    .line 365
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 366
    iget-object v1, p0, Lcom/android/settings_exlib/users/AppRestrictionsHelper$SelectableAppInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 365
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 366
    const-string/jumbo v1, "; masterEntry="

    .line 365
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 366
    iget-object v1, p0, Lcom/android/settings_exlib/users/AppRestrictionsHelper$SelectableAppInfo;->masterEntry:Lcom/android/settings_exlib/users/AppRestrictionsHelper$SelectableAppInfo;

    .line 365
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
