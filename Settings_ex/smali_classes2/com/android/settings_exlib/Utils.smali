.class public Lcom/android/settings_exlib/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static sPermissionControllerPackageName:Ljava/lang/String;

.field private static sServicesSystemSharedLibPackageName:Ljava/lang/String;

.field private static sSharedSystemSharedLibPackageName:Ljava/lang/String;

.field private static sSystemSignature:[Landroid/content/pm/Signature;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static formatPercentage(D)Ljava/lang/String;
    .locals 2
    .param p0, "percentage"    # D

    .prologue
    .line 115
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatPercentage(I)Ljava/lang/String;
    .locals 4
    .param p0, "percentage"    # I

    .prologue
    .line 110
    int-to-double v0, p0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Lcom/android/settings_exlib/Utils;->formatPercentage(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatPercentage(JJ)Ljava/lang/String;
    .locals 4
    .param p0, "amount"    # J
    .param p2, "total"    # J

    .prologue
    .line 105
    long-to-double v0, p0

    long-to-double v2, p2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Lcom/android/settings_exlib/Utils;->formatPercentage(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBatteryLevel(Landroid/content/Intent;)I
    .locals 4
    .param p0, "batteryChangedIntent"    # Landroid/content/Intent;

    .prologue
    .line 119
    const-string/jumbo v2, "level"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 120
    .local v0, "level":I
    const-string/jumbo v2, "scale"

    const/16 v3, 0x64

    invoke-virtual {p0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 121
    .local v1, "scale":I
    mul-int/lit8 v2, v0, 0x64

    div-int/2addr v2, v1

    return v2
.end method

.method public static getBatteryStatus(Landroid/content/res/Resources;Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "batteryChangedIntent"    # Landroid/content/Intent;

    .prologue
    .line 125
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/settings_exlib/Utils;->getBatteryStatus(Landroid/content/res/Resources;Landroid/content/Intent;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBatteryStatus(Landroid/content/res/Resources;Landroid/content/Intent;Z)Ljava/lang/String;
    .locals 9
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "batteryChangedIntent"    # Landroid/content/Intent;
    .param p2, "shortString"    # Z

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 130
    const-string/jumbo v4, "plugged"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 131
    .local v0, "plugType":I
    const-string/jumbo v4, "status"

    invoke-virtual {p1, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 134
    .local v2, "status":I
    if-ne v2, v7, :cond_6

    .line 136
    if-ne v0, v6, :cond_1

    .line 137
    if-eqz p2, :cond_0

    sget v1, Lcom/android/settings_exlib/R$string;->battery_info_status_charging_ac_short:I

    .line 148
    .local v1, "resId":I
    :goto_0
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 159
    .end local v1    # "resId":I
    .local v3, "statusString":Ljava/lang/String;
    :goto_1
    return-object v3

    .line 138
    .end local v3    # "statusString":Ljava/lang/String;
    :cond_0
    sget v1, Lcom/android/settings_exlib/R$string;->battery_info_status_charging_ac:I

    .restart local v1    # "resId":I
    goto :goto_0

    .line 139
    .end local v1    # "resId":I
    :cond_1
    if-ne v0, v7, :cond_3

    .line 140
    if-eqz p2, :cond_2

    sget v1, Lcom/android/settings_exlib/R$string;->battery_info_status_charging_usb_short:I

    .restart local v1    # "resId":I
    goto :goto_0

    .line 141
    .end local v1    # "resId":I
    :cond_2
    sget v1, Lcom/android/settings_exlib/R$string;->battery_info_status_charging_usb:I

    .restart local v1    # "resId":I
    goto :goto_0

    .line 142
    .end local v1    # "resId":I
    :cond_3
    if-ne v0, v8, :cond_5

    .line 143
    if-eqz p2, :cond_4

    sget v1, Lcom/android/settings_exlib/R$string;->battery_info_status_charging_wireless_short:I

    .restart local v1    # "resId":I
    goto :goto_0

    .line 144
    .end local v1    # "resId":I
    :cond_4
    sget v1, Lcom/android/settings_exlib/R$string;->battery_info_status_charging_wireless:I

    .restart local v1    # "resId":I
    goto :goto_0

    .line 146
    .end local v1    # "resId":I
    :cond_5
    sget v1, Lcom/android/settings_exlib/R$string;->battery_info_status_charging:I

    .restart local v1    # "resId":I
    goto :goto_0

    .line 149
    .end local v1    # "resId":I
    :cond_6
    const/4 v4, 0x3

    if-ne v2, v4, :cond_7

    .line 150
    sget v4, Lcom/android/settings_exlib/R$string;->battery_info_status_discharging:I

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "statusString":Ljava/lang/String;
    goto :goto_1

    .line 151
    .end local v3    # "statusString":Ljava/lang/String;
    :cond_7
    if-ne v2, v8, :cond_8

    .line 152
    sget v4, Lcom/android/settings_exlib/R$string;->battery_info_status_not_charging:I

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "statusString":Ljava/lang/String;
    goto :goto_1

    .line 153
    .end local v3    # "statusString":Ljava/lang/String;
    :cond_8
    const/4 v4, 0x5

    if-ne v2, v4, :cond_9

    .line 154
    sget v4, Lcom/android/settings_exlib/R$string;->battery_info_status_full:I

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "statusString":Ljava/lang/String;
    goto :goto_1

    .line 156
    .end local v3    # "statusString":Ljava/lang/String;
    :cond_9
    sget v4, Lcom/android/settings_exlib/R$string;->battery_info_status_unknown:I

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "statusString":Ljava/lang/String;
    goto :goto_1
.end method

.method public static getColorAccent(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 164
    const/4 v2, 0x1

    new-array v2, v2, [I

    const v3, 0x1010435

    aput v3, v2, v4

    invoke-virtual {p0, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 165
    .local v1, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v1, v4, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 166
    .local v0, "colorAccent":I
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 167
    return v0
.end method

.method private static getFirstSignature(Landroid/content/pm/PackageInfo;)Landroid/content/pm/Signature;
    .locals 3
    .param p0, "pkg"    # Landroid/content/pm/PackageInfo;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 197
    if-eqz p0, :cond_0

    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 198
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v0, v0, v2

    return-object v0

    .line 200
    :cond_0
    return-object v1
.end method

.method private static getSystemSignature(Landroid/content/pm/PackageManager;)Landroid/content/pm/Signature;
    .locals 4
    .param p0, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 205
    :try_start_0
    const-string/jumbo v2, "android"

    const/16 v3, 0x40

    invoke-virtual {p0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 206
    .local v1, "sys":Landroid/content/pm/PackageInfo;
    invoke-static {v1}, Lcom/android/settings_exlib/Utils;->getFirstSignature(Landroid/content/pm/PackageInfo;)Landroid/content/pm/Signature;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 207
    .end local v1    # "sys":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 209
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    return-object v2
.end method

.method public static getTetheringLabel(Landroid/net/ConnectivityManager;)I
    .locals 7
    .param p0, "cm"    # Landroid/net/ConnectivityManager;

    .prologue
    .line 38
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v3

    .line 39
    .local v3, "usbRegexs":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v5

    .line 40
    .local v5, "wifiRegexs":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v1

    .line 42
    .local v1, "bluetoothRegexs":[Ljava/lang/String;
    array-length v6, v3

    if-eqz v6, :cond_0

    const/4 v2, 0x1

    .line 43
    .local v2, "usbAvailable":Z
    :goto_0
    array-length v6, v5

    if-eqz v6, :cond_1

    const/4 v4, 0x1

    .line 44
    .local v4, "wifiAvailable":Z
    :goto_1
    array-length v6, v1

    if-eqz v6, :cond_2

    const/4 v0, 0x1

    .line 46
    .local v0, "bluetoothAvailable":Z
    :goto_2
    if-eqz v4, :cond_3

    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    .line 47
    sget v6, Lcom/android/settings_exlib/R$string;->tether_settings_title_all:I

    return v6

    .line 42
    .end local v0    # "bluetoothAvailable":Z
    .end local v2    # "usbAvailable":Z
    .end local v4    # "wifiAvailable":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "usbAvailable":Z
    goto :goto_0

    .line 43
    :cond_1
    const/4 v4, 0x0

    .restart local v4    # "wifiAvailable":Z
    goto :goto_1

    .line 44
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "bluetoothAvailable":Z
    goto :goto_2

    .line 48
    :cond_3
    if-eqz v4, :cond_4

    if-eqz v2, :cond_4

    .line 49
    sget v6, Lcom/android/settings_exlib/R$string;->tether_settings_title_all:I

    return v6

    .line 50
    :cond_4
    if-eqz v4, :cond_5

    if-eqz v0, :cond_5

    .line 51
    sget v6, Lcom/android/settings_exlib/R$string;->tether_settings_title_all:I

    return v6

    .line 52
    :cond_5
    if-eqz v4, :cond_6

    .line 53
    sget v6, Lcom/android/settings_exlib/R$string;->tether_settings_title_wifi:I

    return v6

    .line 54
    :cond_6
    if-eqz v2, :cond_7

    if-eqz v0, :cond_7

    .line 55
    sget v6, Lcom/android/settings_exlib/R$string;->tether_settings_title_usb_bluetooth:I

    return v6

    .line 56
    :cond_7
    if-eqz v2, :cond_8

    .line 57
    sget v6, Lcom/android/settings_exlib/R$string;->tether_settings_title_usb:I

    return v6

    .line 59
    :cond_8
    sget v6, Lcom/android/settings_exlib/R$string;->tether_settings_title_bluetooth:I

    return v6
.end method

.method public static getUserIcon(Landroid/content/Context;Landroid/os/UserManager;Landroid/content/pm/UserInfo;)Lcom/android/settings_exlib/drawable/UserIconDrawable;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "um"    # Landroid/os/UserManager;
    .param p2, "user"    # Landroid/content/pm/UserInfo;

    .prologue
    .line 86
    invoke-static {p0}, Lcom/android/settings_exlib/drawable/UserIconDrawable;->getSizeForList(Landroid/content/Context;)I

    move-result v2

    .line 87
    .local v2, "iconSize":I
    invoke-virtual {p2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 89
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 90
    const v4, 0x1080329

    .line 89
    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 91
    .local v0, "b":Landroid/graphics/Bitmap;
    new-instance v3, Lcom/android/settings_exlib/drawable/UserIconDrawable;

    invoke-direct {v3, v2}, Lcom/android/settings_exlib/drawable/UserIconDrawable;-><init>(I)V

    invoke-virtual {v3, v0}, Lcom/android/settings_exlib/drawable/UserIconDrawable;->setIcon(Landroid/graphics/Bitmap;)Lcom/android/settings_exlib/drawable/UserIconDrawable;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings_exlib/drawable/UserIconDrawable;->bake()Lcom/android/settings_exlib/drawable/UserIconDrawable;

    move-result-object v3

    return-object v3

    .line 93
    .end local v0    # "b":Landroid/graphics/Bitmap;
    :cond_0
    iget-object v3, p2, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 94
    iget v3, p2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p1, v3}, Landroid/os/UserManager;->getUserIcon(I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 95
    .local v1, "icon":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_1

    .line 96
    new-instance v3, Lcom/android/settings_exlib/drawable/UserIconDrawable;

    invoke-direct {v3, v2}, Lcom/android/settings_exlib/drawable/UserIconDrawable;-><init>(I)V

    invoke-virtual {v3, v1}, Lcom/android/settings_exlib/drawable/UserIconDrawable;->setIcon(Landroid/graphics/Bitmap;)Lcom/android/settings_exlib/drawable/UserIconDrawable;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings_exlib/drawable/UserIconDrawable;->bake()Lcom/android/settings_exlib/drawable/UserIconDrawable;

    move-result-object v3

    return-object v3

    .line 99
    .end local v1    # "icon":Landroid/graphics/Bitmap;
    :cond_1
    new-instance v3, Lcom/android/settings_exlib/drawable/UserIconDrawable;

    invoke-direct {v3, v2}, Lcom/android/settings_exlib/drawable/UserIconDrawable;-><init>(I)V

    .line 100
    iget v4, p2, Landroid/content/pm/UserInfo;->id:I

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/settings_exlib/drawable/UserIcons;->getDefaultUserIcon(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 99
    invoke-virtual {v3, v4}, Lcom/android/settings_exlib/drawable/UserIconDrawable;->setIconDrawable(Landroid/graphics/drawable/Drawable;)Lcom/android/settings_exlib/drawable/UserIconDrawable;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings_exlib/drawable/UserIconDrawable;->bake()Lcom/android/settings_exlib/drawable/UserIconDrawable;

    move-result-object v3

    return-object v3
.end method

.method public static getUserLabel(Landroid/content/Context;Landroid/content/pm/UserInfo;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "info"    # Landroid/content/pm/UserInfo;

    .prologue
    .line 67
    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 68
    :goto_0
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 70
    sget v1, Lcom/android/settings_exlib/R$string;->managed_user_title:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 67
    :cond_0
    const/4 v0, 0x0

    .local v0, "name":Ljava/lang/String;
    goto :goto_0

    .line 71
    .end local v0    # "name":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 72
    sget v1, Lcom/android/settings_exlib/R$string;->user_guest:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 74
    :cond_2
    if-nez v0, :cond_4

    if-eqz p1, :cond_4

    .line 75
    iget v1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 79
    :cond_3
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings_exlib/R$string;->running_process_item_user_label:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 76
    :cond_4
    if-nez p1, :cond_3

    .line 77
    sget v1, Lcom/android/settings_exlib/R$string;->unknown:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "name":Ljava/lang/String;
    goto :goto_1
.end method

.method public static isDeviceProvisioningPackage(Landroid/content/res/Resources;Ljava/lang/String;)Z
    .locals 2
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 218
    const v1, 0x104007d

    .line 217
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 219
    .local v0, "deviceProvisioningPackage":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isSystemPackage(Landroid/content/res/Resources;Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Z
    .locals 4
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "pkg"    # Landroid/content/pm/PackageInfo;

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 175
    sget-object v1, Lcom/android/settings_exlib/Utils;->sSystemSignature:[Landroid/content/pm/Signature;

    if-nez v1, :cond_0

    .line 176
    new-array v1, v0, [Landroid/content/pm/Signature;

    invoke-static {p1}, Lcom/android/settings_exlib/Utils;->getSystemSignature(Landroid/content/pm/PackageManager;)Landroid/content/pm/Signature;

    move-result-object v2

    aput-object v2, v1, v3

    sput-object v1, Lcom/android/settings_exlib/Utils;->sSystemSignature:[Landroid/content/pm/Signature;

    .line 178
    :cond_0
    sget-object v1, Lcom/android/settings_exlib/Utils;->sPermissionControllerPackageName:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 179
    invoke-virtual {p1}, Landroid/content/pm/PackageManager;->getPermissionControllerPackageName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/settings_exlib/Utils;->sPermissionControllerPackageName:Ljava/lang/String;

    .line 181
    :cond_1
    sget-object v1, Lcom/android/settings_exlib/Utils;->sServicesSystemSharedLibPackageName:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 182
    invoke-virtual {p1}, Landroid/content/pm/PackageManager;->getServicesSystemSharedLibraryPackageName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/settings_exlib/Utils;->sServicesSystemSharedLibPackageName:Ljava/lang/String;

    .line 184
    :cond_2
    sget-object v1, Lcom/android/settings_exlib/Utils;->sSharedSystemSharedLibPackageName:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 185
    invoke-virtual {p1}, Landroid/content/pm/PackageManager;->getSharedSystemSharedLibraryPackageName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/settings_exlib/Utils;->sSharedSystemSharedLibPackageName:Ljava/lang/String;

    .line 187
    :cond_3
    sget-object v1, Lcom/android/settings_exlib/Utils;->sSystemSignature:[Landroid/content/pm/Signature;

    aget-object v1, v1, v3

    if-eqz v1, :cond_4

    .line 188
    sget-object v1, Lcom/android/settings_exlib/Utils;->sSystemSignature:[Landroid/content/pm/Signature;

    aget-object v1, v1, v3

    invoke-static {p2}, Lcom/android/settings_exlib/Utils;->getFirstSignature(Landroid/content/pm/PackageInfo;)Landroid/content/pm/Signature;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 187
    if-nez v1, :cond_5

    .line 189
    :cond_4
    iget-object v1, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    sget-object v2, Lcom/android/settings_exlib/Utils;->sPermissionControllerPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 187
    if-nez v1, :cond_5

    .line 190
    iget-object v1, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    sget-object v2, Lcom/android/settings_exlib/Utils;->sServicesSystemSharedLibPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 187
    if-nez v1, :cond_5

    .line 191
    iget-object v1, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    sget-object v2, Lcom/android/settings_exlib/Utils;->sSharedSystemSharedLibPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 187
    if-nez v1, :cond_5

    .line 192
    iget-object v1, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v2, "com.android.printspooler"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 187
    if-nez v1, :cond_5

    .line 193
    iget-object v0, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/settings_exlib/Utils;->isDeviceProvisioningPackage(Landroid/content/res/Resources;Ljava/lang/String;)Z

    move-result v0

    .line 187
    :cond_5
    return v0
.end method
