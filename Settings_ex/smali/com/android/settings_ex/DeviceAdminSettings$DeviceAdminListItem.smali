.class Lcom/android/settings_ex/DeviceAdminSettings$DeviceAdminListItem;
.super Ljava/lang/Object;
.source "DeviceAdminSettings.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/DeviceAdminSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeviceAdminListItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/settings_ex/DeviceAdminSettings$DeviceAdminListItem;",
        ">;"
    }
.end annotation


# instance fields
.field public active:Z

.field public info:Landroid/app/admin/DeviceAdminInfo;

.field public name:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/DeviceAdminSettings$DeviceAdminListItem;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/settings_ex/DeviceAdminSettings$DeviceAdminListItem;-><init>()V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/settings_ex/DeviceAdminSettings$DeviceAdminListItem;)I
    .locals 2
    .param p1, "other"    # Lcom/android/settings_ex/DeviceAdminSettings$DeviceAdminListItem;

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/android/settings_ex/DeviceAdminSettings$DeviceAdminListItem;->active:Z

    iget-boolean v1, p1, Lcom/android/settings_ex/DeviceAdminSettings$DeviceAdminListItem;->active:Z

    if-eq v0, v1, :cond_1

    .line 79
    iget-boolean v0, p0, Lcom/android/settings_ex/DeviceAdminSettings$DeviceAdminListItem;->active:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/DeviceAdminSettings$DeviceAdminListItem;->name:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/settings_ex/DeviceAdminSettings$DeviceAdminListItem;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 76
    check-cast p1, Lcom/android/settings_ex/DeviceAdminSettings$DeviceAdminListItem;

    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/DeviceAdminSettings$DeviceAdminListItem;->compareTo(Lcom/android/settings_ex/DeviceAdminSettings$DeviceAdminListItem;)I

    move-result v0

    return v0
.end method
