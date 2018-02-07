.class public Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;
.super Lcom/android/settings_exlib/applications/ApplicationsState$SizeInfo;
.source "ApplicationsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_exlib/applications/ApplicationsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppEntry"
.end annotation


# instance fields
.field public final apkFile:Ljava/io/File;

.field public externalSize:J

.field public externalSizeStr:Ljava/lang/String;

.field public extraInfo:Ljava/lang/Object;

.field public hasLauncherEntry:Z

.field public icon:Landroid/graphics/drawable/Drawable;

.field public final id:J

.field public info:Landroid/content/pm/ApplicationInfo;

.field public internalSize:J

.field public internalSizeStr:Ljava/lang/String;

.field public isHomeApp:Z

.field public label:Ljava/lang/String;

.field public mounted:Z

.field public normalizedLabel:Ljava/lang/String;

.field public size:J

.field public sizeLoadStart:J

.field public sizeStale:Z

.field public sizeStr:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;J)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p3, "id"    # J

    .prologue
    .line 1171
    invoke-direct {p0}, Lcom/android/settings_exlib/applications/ApplicationsState$SizeInfo;-><init>()V

    .line 1172
    new-instance v0, Ljava/io/File;

    iget-object v1, p2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->apkFile:Ljava/io/File;

    .line 1173
    iput-wide p3, p0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->id:J

    .line 1174
    iput-object p2, p0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    .line 1175
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->size:J

    .line 1176
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->sizeStale:Z

    .line 1177
    invoke-virtual {p0, p1}, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->ensureLabel(Landroid/content/Context;)V

    .line 1171
    return-void
.end method

.method private getBadgedIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 1217
    iget-object v0, p0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->loadUnbadgedItemIcon(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1218
    new-instance v1, Landroid/os/UserHandle;

    iget-object v2, p0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    .line 1217
    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method ensureIconLocked(Landroid/content/Context;Landroid/content/pm/PackageManager;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1194
    iget-object v0, p0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2

    .line 1195
    iget-object v0, p0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->apkFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1196
    invoke-direct {p0, p2}, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->getBadgedIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    .line 1197
    return v1

    .line 1199
    :cond_0
    iput-boolean v2, p0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->mounted:Z

    .line 1201
    const v0, 0x1080747

    .line 1200
    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    .line 1212
    :cond_1
    return v2

    .line 1203
    :cond_2
    iget-boolean v0, p0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->mounted:Z

    if-nez v0, :cond_1

    .line 1206
    iget-object v0, p0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->apkFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1207
    iput-boolean v1, p0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->mounted:Z

    .line 1208
    invoke-direct {p0, p2}, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->getBadgedIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    .line 1209
    return v1
.end method

.method public ensureLabel(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1181
    iget-object v1, p0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->mounted:Z

    if-eqz v1, :cond_0

    .line 1180
    :goto_0
    return-void

    .line 1182
    :cond_0
    iget-object v1, p0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->apkFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1183
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->mounted:Z

    .line 1184
    iget-object v1, p0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    goto :goto_0

    .line 1186
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->mounted:Z

    .line 1187
    iget-object v1, p0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1188
    .local v0, "label":Ljava/lang/CharSequence;
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    iput-object v1, p0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    goto :goto_1
.end method

.method public getNormalizedLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1150
    iget-object v0, p0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->normalizedLabel:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1151
    iget-object v0, p0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->normalizedLabel:Ljava/lang/String;

    return-object v0

    .line 1153
    :cond_0
    iget-object v0, p0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings_exlib/applications/ApplicationsState;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->normalizedLabel:Ljava/lang/String;

    .line 1154
    iget-object v0, p0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->normalizedLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1223
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1224
    :catch_0
    move-exception v0

    .line 1225
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v1, ""

    return-object v1
.end method
