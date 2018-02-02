.class public Lcom/amap/api/mapcore2d/cl;
.super Ljava/lang/Object;
.source "AppInfo.java"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string/jumbo v0, ""

    .line 20
    sput-object v0, Lcom/amap/api/mapcore2d/cl;->a:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 21
    sput-object v0, Lcom/amap/api/mapcore2d/cl;->b:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 22
    sput-object v0, Lcom/amap/api/mapcore2d/cl;->c:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 23
    sput-object v0, Lcom/amap/api/mapcore2d/cl;->d:Ljava/lang/String;

    const/4 v0, 0x0

    .line 24
    sput-object v0, Lcom/amap/api/mapcore2d/cl;->e:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    :try_start_0
    invoke-static {p0}, Lcom/amap/api/mapcore2d/cl;->g(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    .line 35
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 37
    sget-object v0, Lcom/amap/api/mapcore2d/cl;->d:Ljava/lang/String;

    return-object v0
.end method

.method static a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 166
    sput-object p0, Lcom/amap/api/mapcore2d/cl;->d:Ljava/lang/String;

    .line 167
    return-void
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    :try_start_0
    const-string/jumbo v0, ""

    .line 50
    sget-object v1, Lcom/amap/api/mapcore2d/cl;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 55
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 54
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 57
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/amap/api/mapcore2d/cl;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :goto_0
    sget-object v0, Lcom/amap/api/mapcore2d/cl;->a:Ljava/lang/String;

    return-object v0

    .line 51
    :cond_0
    :try_start_1
    sget-object v0, Lcom/amap/api/mapcore2d/cl;->a:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    .line 60
    :catch_0
    move-exception v0

    const-string/jumbo v1, "AppInfo"

    const-string/jumbo v2, "getApplicationName"

    .line 59
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 90
    :try_start_0
    sget-object v0, Lcom/amap/api/mapcore2d/cl;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 93
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amap/api/mapcore2d/cl;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :goto_0
    sget-object v0, Lcom/amap/api/mapcore2d/cl;->b:Ljava/lang/String;

    return-object v0

    :cond_1
    :try_start_1
    const-string/jumbo v0, ""

    .line 90
    sget-object v1, Lcom/amap/api/mapcore2d/cl;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    sget-object v0, Lcom/amap/api/mapcore2d/cl;->b:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    .line 99
    :catch_0
    move-exception v0

    const-string/jumbo v1, "AppInfo"

    const-string/jumbo v2, "getpckn"

    .line 97
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    :try_start_0
    const-string/jumbo v0, ""

    .line 114
    sget-object v1, Lcom/amap/api/mapcore2d/cl;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 118
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 120
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v0, Lcom/amap/api/mapcore2d/cl;->c:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :goto_0
    sget-object v0, Lcom/amap/api/mapcore2d/cl;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/amap/api/mapcore2d/cl;->c:Ljava/lang/String;

    :goto_1
    return-object v0

    .line 115
    :cond_0
    :try_start_1
    sget-object v0, Lcom/amap/api/mapcore2d/cl;->c:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    .line 125
    :catch_0
    move-exception v0

    const-string/jumbo v1, "AppInfo"

    const-string/jumbo v2, "getApplicationVersion"

    .line 124
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, ""

    goto :goto_1
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 139
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 140
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x40

    .line 139
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 142
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v2

    const-string/jumbo v3, "SHA1"

    .line 143
    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 144
    invoke-virtual {v3, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    .line 145
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 146
    :goto_0
    array-length v4, v2

    if-lt v0, v4, :cond_0

    .line 154
    sget-object v0, Lcom/amap/api/mapcore2d/cl;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0}, Lcom/amap/api/mapcore2d/cl;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 155
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amap/api/mapcore2d/cl;->e:Ljava/lang/String;

    .line 156
    sget-object v0, Lcom/amap/api/mapcore2d/cl;->e:Ljava/lang/String;

    return-object v0

    .line 147
    :cond_0
    aget-byte v4, v2, v0

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 148
    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 149
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_1

    .line 151
    :goto_2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v4, ":"

    .line 152
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 146
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v5, "0"

    .line 150
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 156
    :catch_0
    move-exception v0

    const-string/jumbo v1, "AppInfo"

    const-string/jumbo v2, "getpck"

    .line 159
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    sget-object v0, Lcom/amap/api/mapcore2d/cl;->e:Ljava/lang/String;

    return-object v0

    .line 154
    :cond_2
    :try_start_1
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static f(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 177
    :try_start_0
    invoke-static {p0}, Lcom/amap/api/mapcore2d/cl;->g(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "AppInfo"

    const-string/jumbo v2, "getKey"

    .line 179
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    sget-object v0, Lcom/amap/api/mapcore2d/cl;->d:Ljava/lang/String;

    return-object v0
.end method

.method private static g(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 188
    sget-object v0, Lcom/amap/api/mapcore2d/cl;->d:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 189
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 190
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 192
    if-nez v0, :cond_4

    .line 193
    :cond_1
    sget-object v0, Lcom/amap/api/mapcore2d/cl;->d:Ljava/lang/String;

    return-object v0

    .line 188
    :cond_2
    sget-object v0, Lcom/amap/api/mapcore2d/cl;->d:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 200
    :cond_3
    :goto_0
    sget-object v0, Lcom/amap/api/mapcore2d/cl;->d:Ljava/lang/String;

    return-object v0

    .line 192
    :cond_4
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_1

    .line 195
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v1, "com.amap.api.v2.apikey"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amap/api/mapcore2d/cl;->d:Ljava/lang/String;

    .line 196
    sget-object v0, Lcom/amap/api/mapcore2d/cl;->d:Ljava/lang/String;

    if-nez v0, :cond_3

    const-string/jumbo v0, ""

    .line 197
    sput-object v0, Lcom/amap/api/mapcore2d/cl;->d:Ljava/lang/String;

    goto :goto_0
.end method
