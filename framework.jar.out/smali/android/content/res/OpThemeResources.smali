.class public Landroid/content/res/OpThemeResources;
.super Ljava/lang/Object;
.source "OpThemeResources.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/OpThemeResources$MetaData;
    }
.end annotation


# static fields
.field public static final FRAMEWORK_NAME:Ljava/lang/String; = "framework-res"

.field public static final FRAMEWORK_PACKAGE:Ljava/lang/String; = "android"

.field public static final HYDRONGEN_NAME:Ljava/lang/String; = "hydrongen-framework-res"

.field public static final HYDRONGEN_PACKAGE:Ljava/lang/String; = "hydrongen"

.field public static final ICONS_NAME:Ljava/lang/String; = "icons"

.field public static final SYSTEM_THEME_PATH:Ljava/lang/String; = "/system/media/theme/default/"

.field private static final TAG:Ljava/lang/String; = "OpThemeResources"

.field public static final THEME_PATH:Ljava/lang/String; = "/data/theme/"

.field public static final THEME_PATHS:[Landroid/content/res/OpThemeResources$MetaData;

.field private static sSystem:Landroid/content/res/OpThemeResourcesSystem;


# instance fields
.field private final debug:Z

.field protected mHasValue:Z

.field protected mIsHasValue:Z

.field protected mIsHasWrapped:Z

.field private mMetaData:Landroid/content/res/OpThemeResources$MetaData;

.field private mPackageName:Ljava/lang/String;

.field protected mPackageZipFile:Landroid/content/res/OpThemeZipFile;

.field protected mResources:Landroid/content/res/Resources;

.field protected mSupportWrapper:Z

.field protected mWrapped:Landroid/content/res/OpThemeResources;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 60
    const/4 v1, 0x2

    new-array v0, v1, [Landroid/content/res/OpThemeResources$MetaData;

    .line 61
    .local v0, "metadata":[Landroid/content/res/OpThemeResources$MetaData;
    const/4 v1, 0x0

    new-instance v2, Landroid/content/res/OpThemeResources$MetaData;

    const-string v3, "/system/media/theme/default/"

    invoke-direct {v2, v3, v4, v4, v4}, Landroid/content/res/OpThemeResources$MetaData;-><init>(Ljava/lang/String;ZZZ)V

    aput-object v2, v0, v1

    .line 62
    new-instance v1, Landroid/content/res/OpThemeResources$MetaData;

    const-string v2, "/data/theme/"

    invoke-direct {v1, v2, v4, v4, v4}, Landroid/content/res/OpThemeResources$MetaData;-><init>(Ljava/lang/String;ZZZ)V

    aput-object v1, v0, v4

    .line 63
    sput-object v0, Landroid/content/res/OpThemeResources;->THEME_PATHS:[Landroid/content/res/OpThemeResources$MetaData;

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/res/OpThemeResources;Landroid/content/res/Resources;Ljava/lang/String;Landroid/content/res/OpThemeResources$MetaData;)V
    .locals 4
    .param p1, "themeResources"    # Landroid/content/res/OpThemeResources;
    .param p2, "resources"    # Landroid/content/res/Resources;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "metaData"    # Landroid/content/res/OpThemeResources$MetaData;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/content/res/OpThemeResources;->debug:Z

    .line 40
    iput-boolean v3, p0, Landroid/content/res/OpThemeResources;->mIsHasValue:Z

    .line 41
    iput-boolean v3, p0, Landroid/content/res/OpThemeResources;->mIsHasWrapped:Z

    .line 42
    iput-object v2, p0, Landroid/content/res/OpThemeResources;->mPackageZipFile:Landroid/content/res/OpThemeZipFile;

    .line 43
    iput-object v2, p0, Landroid/content/res/OpThemeResources;->mResources:Landroid/content/res/Resources;

    .line 44
    iput-boolean v3, p0, Landroid/content/res/OpThemeResources;->mSupportWrapper:Z

    .line 45
    iput-object v2, p0, Landroid/content/res/OpThemeResources;->mWrapped:Landroid/content/res/OpThemeResources;

    .line 82
    iput-object v2, p0, Landroid/content/res/OpThemeResources;->mMetaData:Landroid/content/res/OpThemeResources$MetaData;

    .line 83
    iput-object v2, p0, Landroid/content/res/OpThemeResources;->mPackageName:Ljava/lang/String;

    .line 87
    const/4 v0, 0x0

    .line 88
    .local v0, "flag":Z
    if-eqz p1, :cond_0

    .line 89
    iget-object v1, p1, Landroid/content/res/OpThemeResources;->mPackageZipFile:Landroid/content/res/OpThemeZipFile;

    if-eqz v1, :cond_1

    .line 90
    iput-object p1, p0, Landroid/content/res/OpThemeResources;->mWrapped:Landroid/content/res/OpThemeResources;

    .line 96
    :cond_0
    :goto_0
    iput-object p4, p0, Landroid/content/res/OpThemeResources;->mMetaData:Landroid/content/res/OpThemeResources$MetaData;

    .line 97
    iput-object p3, p0, Landroid/content/res/OpThemeResources;->mPackageName:Ljava/lang/String;

    .line 98
    iput-object p2, p0, Landroid/content/res/OpThemeResources;->mResources:Landroid/content/res/Resources;

    .line 99
    invoke-virtual {p0}, Landroid/content/res/OpThemeResources;->checkUpdate()Z

    .line 100
    return-void

    .line 92
    :cond_1
    iput-object v2, p0, Landroid/content/res/OpThemeResources;->mWrapped:Landroid/content/res/OpThemeResources;

    goto :goto_0
.end method

.method public static getSystem(Landroid/content/res/Resources;)Landroid/content/res/OpThemeResources;
    .locals 1
    .param p0, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 107
    sget-object v0, Landroid/content/res/OpThemeResources;->sSystem:Landroid/content/res/OpThemeResourcesSystem;

    if-nez v0, :cond_0

    .line 108
    invoke-static {p0}, Landroid/content/res/OpThemeResourcesSystem;->getTopLevelThemeResources(Landroid/content/res/Resources;)Landroid/content/res/OpThemeResourcesSystem;

    move-result-object v0

    sput-object v0, Landroid/content/res/OpThemeResources;->sSystem:Landroid/content/res/OpThemeResourcesSystem;

    .line 110
    :cond_0
    sget-object v0, Landroid/content/res/OpThemeResources;->sSystem:Landroid/content/res/OpThemeResourcesSystem;

    return-object v0
.end method

.method public static getSystem()Landroid/content/res/OpThemeResourcesSystem;
    .locals 1

    .prologue
    .line 114
    sget-object v0, Landroid/content/res/OpThemeResources;->sSystem:Landroid/content/res/OpThemeResourcesSystem;

    if-eqz v0, :cond_0

    .line 115
    sget-object v0, Landroid/content/res/OpThemeResources;->sSystem:Landroid/content/res/OpThemeResourcesSystem;

    .line 117
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getTopLevelThemeResources(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/content/res/OpThemeResources;
    .locals 4
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 121
    const/4 v2, 0x0

    .line 122
    .local v2, "themeResources":Landroid/content/res/OpThemeResources;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v3, Landroid/content/res/OpThemeResources;->THEME_PATHS:[Landroid/content/res/OpThemeResources$MetaData;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 123
    new-instance v1, Landroid/content/res/OpThemeResources;

    sget-object v3, Landroid/content/res/OpThemeResources;->THEME_PATHS:[Landroid/content/res/OpThemeResources$MetaData;

    aget-object v3, v3, v0

    invoke-direct {v1, v2, p0, p1, v3}, Landroid/content/res/OpThemeResources;-><init>(Landroid/content/res/OpThemeResources;Landroid/content/res/Resources;Ljava/lang/String;Landroid/content/res/OpThemeResources$MetaData;)V

    .line 125
    .local v1, "res":Landroid/content/res/OpThemeResources;
    move-object v2, v1

    .line 122
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 127
    .end local v1    # "res":Landroid/content/res/OpThemeResources;
    :cond_0
    return-object v2
.end method


# virtual methods
.method public checkUpdate()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 131
    const/4 v0, 0x0

    .line 132
    .local v0, "isFileUpdata":Z
    const/4 v1, 0x0

    .line 134
    .local v1, "isWrappedUpdata":Z
    iget-object v4, p0, Landroid/content/res/OpThemeResources;->mPackageZipFile:Landroid/content/res/OpThemeZipFile;

    if-nez v4, :cond_0

    .line 135
    iget-object v4, p0, Landroid/content/res/OpThemeResources;->mMetaData:Landroid/content/res/OpThemeResources$MetaData;

    iget-object v5, p0, Landroid/content/res/OpThemeResources;->mPackageName:Ljava/lang/String;

    iget-object v6, p0, Landroid/content/res/OpThemeResources;->mResources:Landroid/content/res/Resources;

    invoke-static {v4, v5, v6}, Landroid/content/res/OpThemeZipFile;->getThemeZipFile(Landroid/content/res/OpThemeResources$MetaData;Ljava/lang/String;Landroid/content/res/Resources;)Landroid/content/res/OpThemeZipFile;

    move-result-object v4

    iput-object v4, p0, Landroid/content/res/OpThemeResources;->mPackageZipFile:Landroid/content/res/OpThemeZipFile;

    .line 138
    :cond_0
    iget-object v4, p0, Landroid/content/res/OpThemeResources;->mPackageZipFile:Landroid/content/res/OpThemeZipFile;

    if-eqz v4, :cond_1

    .line 139
    iget-object v4, p0, Landroid/content/res/OpThemeResources;->mPackageZipFile:Landroid/content/res/OpThemeZipFile;

    invoke-virtual {v4}, Landroid/content/res/OpThemeZipFile;->checkUpdate()Z

    move-result v0

    .line 142
    :cond_1
    iget-object v4, p0, Landroid/content/res/OpThemeResources;->mWrapped:Landroid/content/res/OpThemeResources;

    if-eqz v4, :cond_5

    .line 143
    iput-boolean v3, p0, Landroid/content/res/OpThemeResources;->mIsHasWrapped:Z

    .line 148
    :goto_0
    iget-boolean v4, p0, Landroid/content/res/OpThemeResources;->mIsHasWrapped:Z

    if-eqz v4, :cond_2

    .line 149
    iget-object v4, p0, Landroid/content/res/OpThemeResources;->mWrapped:Landroid/content/res/OpThemeResources;

    iget-object v4, v4, Landroid/content/res/OpThemeResources;->mPackageZipFile:Landroid/content/res/OpThemeZipFile;

    invoke-virtual {v4}, Landroid/content/res/OpThemeZipFile;->checkUpdate()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Landroid/content/res/OpThemeResources;->mWrapped:Landroid/content/res/OpThemeResources;

    if-eqz v4, :cond_6

    .line 150
    const/4 v1, 0x1

    .line 155
    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroid/content/res/OpThemeResources;->hasValuesInner()Z

    move-result v4

    iput-boolean v4, p0, Landroid/content/res/OpThemeResources;->mHasValue:Z

    .line 157
    if-nez v0, :cond_3

    if-eqz v1, :cond_4

    :cond_3
    move v2, v3

    .line 161
    :cond_4
    return v2

    .line 145
    :cond_5
    iput-boolean v2, p0, Landroid/content/res/OpThemeResources;->mIsHasWrapped:Z

    goto :goto_0

    .line 152
    :cond_6
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public containsEntry(Ljava/lang/String;)Z
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 182
    const/4 v0, 0x0

    .line 183
    .local v0, "isExists":Z
    iget-object v1, p0, Landroid/content/res/OpThemeResources;->mPackageZipFile:Landroid/content/res/OpThemeZipFile;

    if-eqz v1, :cond_0

    .line 184
    iget-object v1, p0, Landroid/content/res/OpThemeResources;->mPackageZipFile:Landroid/content/res/OpThemeZipFile;

    invoke-virtual {v1, p1}, Landroid/content/res/OpThemeZipFile;->containsEntry(Ljava/lang/String;)Z

    move-result v0

    .line 185
    if-nez v0, :cond_0

    iget-object v1, p0, Landroid/content/res/OpThemeResources;->mPackageZipFile:Landroid/content/res/OpThemeZipFile;

    invoke-virtual {v1}, Landroid/content/res/OpThemeZipFile;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/content/res/OpThemeResources;->mWrapped:Landroid/content/res/OpThemeResources;

    if-eqz v1, :cond_0

    .line 186
    iget-object v1, p0, Landroid/content/res/OpThemeResources;->mWrapped:Landroid/content/res/OpThemeResources;

    iget-object v1, v1, Landroid/content/res/OpThemeResources;->mPackageZipFile:Landroid/content/res/OpThemeZipFile;

    invoke-virtual {v1, p1}, Landroid/content/res/OpThemeZipFile;->containsEntry(Ljava/lang/String;)Z

    move-result v0

    .line 190
    :cond_0
    return v0
.end method

.method public getPackageThemeFileStream(ILjava/lang/String;)Landroid/content/res/OpThemeZipFile$ThemeFileInfo;
    .locals 1
    .param p1, "index"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 213
    invoke-virtual {p0, p1, p2}, Landroid/content/res/OpThemeResources;->getPackageThemeFileStreamInner(ILjava/lang/String;)Landroid/content/res/OpThemeZipFile$ThemeFileInfo;

    move-result-object v0

    return-object v0
.end method

.method protected getPackageThemeFileStreamInner(ILjava/lang/String;)Landroid/content/res/OpThemeZipFile$ThemeFileInfo;
    .locals 2
    .param p1, "index"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 240
    const/4 v0, 0x0

    .line 241
    .local v0, "themeFileInfo":Landroid/content/res/OpThemeZipFile$ThemeFileInfo;
    iget-object v1, p0, Landroid/content/res/OpThemeResources;->mPackageZipFile:Landroid/content/res/OpThemeZipFile;

    if-eqz v1, :cond_0

    .line 242
    iget-object v1, p0, Landroid/content/res/OpThemeResources;->mPackageZipFile:Landroid/content/res/OpThemeZipFile;

    invoke-virtual {v1, p1, p2}, Landroid/content/res/OpThemeZipFile;->getInputStream(ILjava/lang/String;)Landroid/content/res/OpThemeZipFile$ThemeFileInfo;

    move-result-object v0

    .line 245
    :cond_0
    iget-object v1, p0, Landroid/content/res/OpThemeResources;->mWrapped:Landroid/content/res/OpThemeResources;

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    iget-boolean v1, p0, Landroid/content/res/OpThemeResources;->mIsHasWrapped:Z

    if-eqz v1, :cond_1

    .line 246
    iget-object v1, p0, Landroid/content/res/OpThemeResources;->mWrapped:Landroid/content/res/OpThemeResources;

    iget-object v1, v1, Landroid/content/res/OpThemeResources;->mPackageZipFile:Landroid/content/res/OpThemeZipFile;

    invoke-virtual {v1, p1, p2}, Landroid/content/res/OpThemeZipFile;->getInputStream(ILjava/lang/String;)Landroid/content/res/OpThemeZipFile$ThemeFileInfo;

    move-result-object v0

    .line 249
    :cond_1
    return-object v0
.end method

.method public getThemeCharSequence(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 194
    invoke-virtual {p0, p1}, Landroid/content/res/OpThemeResources;->getThemeCharSequenceInner(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected getThemeCharSequenceInner(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 198
    const/4 v0, 0x0

    .line 199
    .local v0, "res":Ljava/lang/CharSequence;
    iget-object v1, p0, Landroid/content/res/OpThemeResources;->mPackageZipFile:Landroid/content/res/OpThemeZipFile;

    if-eqz v1, :cond_0

    .line 200
    iget-object v1, p0, Landroid/content/res/OpThemeResources;->mPackageZipFile:Landroid/content/res/OpThemeZipFile;

    invoke-virtual {v1, p1}, Landroid/content/res/OpThemeZipFile;->getThemeCharSequence(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 202
    :cond_0
    if-nez v0, :cond_1

    iget-boolean v1, p0, Landroid/content/res/OpThemeResources;->mIsHasWrapped:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/content/res/OpThemeResources;->mWrapped:Landroid/content/res/OpThemeResources;

    if-eqz v1, :cond_1

    .line 203
    iget-object v1, p0, Landroid/content/res/OpThemeResources;->mWrapped:Landroid/content/res/OpThemeResources;

    iget-object v1, v1, Landroid/content/res/OpThemeResources;->mPackageZipFile:Landroid/content/res/OpThemeZipFile;

    invoke-virtual {v1, p1}, Landroid/content/res/OpThemeZipFile;->getThemeCharSequence(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 205
    :cond_1
    return-object v0
.end method

.method public getThemeFileStream(ILjava/lang/String;)Landroid/content/res/OpThemeZipFile$ThemeFileInfo;
    .locals 1
    .param p1, "id"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 209
    invoke-virtual {p0, p2}, Landroid/content/res/OpThemeResources;->getThemeFileStream(Ljava/lang/String;)Landroid/content/res/OpThemeZipFile$ThemeFileInfo;

    move-result-object v0

    return-object v0
.end method

.method public getThemeFileStream(Ljava/lang/String;)Landroid/content/res/OpThemeZipFile$ThemeFileInfo;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 217
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/content/res/OpThemeResources;->getThemeFileStreamInner(Ljava/lang/String;Z)Landroid/content/res/OpThemeZipFile$ThemeFileInfo;

    move-result-object v0

    return-object v0
.end method

.method public getThemeFileStream(Ljava/lang/String;Z)Landroid/content/res/OpThemeZipFile$ThemeFileInfo;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "useWrap"    # Z

    .prologue
    .line 224
    invoke-virtual {p0, p1, p2}, Landroid/content/res/OpThemeResources;->getThemeFileStreamInner(Ljava/lang/String;Z)Landroid/content/res/OpThemeZipFile$ThemeFileInfo;

    move-result-object v0

    return-object v0
.end method

.method protected getThemeFileStreamInner(Ljava/lang/String;)Landroid/content/res/OpThemeZipFile$ThemeFileInfo;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 221
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/content/res/OpThemeResources;->getThemeFileStreamInner(Ljava/lang/String;Z)Landroid/content/res/OpThemeZipFile$ThemeFileInfo;

    move-result-object v0

    return-object v0
.end method

.method protected getThemeFileStreamInner(Ljava/lang/String;Z)Landroid/content/res/OpThemeZipFile$ThemeFileInfo;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "useWrap"    # Z

    .prologue
    .line 227
    const/4 v0, 0x0

    .line 228
    .local v0, "themeFileInfo":Landroid/content/res/OpThemeZipFile$ThemeFileInfo;
    iget-object v1, p0, Landroid/content/res/OpThemeResources;->mPackageZipFile:Landroid/content/res/OpThemeZipFile;

    if-eqz v1, :cond_0

    .line 229
    iget-object v1, p0, Landroid/content/res/OpThemeResources;->mPackageZipFile:Landroid/content/res/OpThemeZipFile;

    invoke-virtual {v1, p1}, Landroid/content/res/OpThemeZipFile;->getInputStream(Ljava/lang/String;)Landroid/content/res/OpThemeZipFile$ThemeFileInfo;

    move-result-object v0

    .line 232
    :cond_0
    iget-object v1, p0, Landroid/content/res/OpThemeResources;->mWrapped:Landroid/content/res/OpThemeResources;

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    iget-boolean v1, p0, Landroid/content/res/OpThemeResources;->mIsHasWrapped:Z

    if-eqz v1, :cond_1

    if-eqz p2, :cond_1

    .line 233
    iget-object v1, p0, Landroid/content/res/OpThemeResources;->mWrapped:Landroid/content/res/OpThemeResources;

    iget-object v1, v1, Landroid/content/res/OpThemeResources;->mPackageZipFile:Landroid/content/res/OpThemeZipFile;

    invoke-virtual {v1, p1}, Landroid/content/res/OpThemeZipFile;->getInputStream(Ljava/lang/String;)Landroid/content/res/OpThemeZipFile$ThemeFileInfo;

    move-result-object v0

    .line 236
    :cond_1
    return-object v0
.end method

.method public getThemeInt(I)Ljava/lang/Integer;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 253
    invoke-virtual {p0, p1}, Landroid/content/res/OpThemeResources;->getThemeIntInner(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected getThemeIntInner(I)Ljava/lang/Integer;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 257
    const/4 v0, 0x0

    .line 258
    .local v0, "res":Ljava/lang/Integer;
    iget-object v1, p0, Landroid/content/res/OpThemeResources;->mPackageZipFile:Landroid/content/res/OpThemeZipFile;

    if-eqz v1, :cond_0

    .line 259
    iget-object v1, p0, Landroid/content/res/OpThemeResources;->mPackageZipFile:Landroid/content/res/OpThemeZipFile;

    invoke-virtual {v1, p1}, Landroid/content/res/OpThemeZipFile;->getThemeInt(I)Ljava/lang/Integer;

    move-result-object v0

    .line 262
    :cond_0
    if-nez v0, :cond_1

    iget-boolean v1, p0, Landroid/content/res/OpThemeResources;->mIsHasWrapped:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/content/res/OpThemeResources;->mWrapped:Landroid/content/res/OpThemeResources;

    if-eqz v1, :cond_1

    .line 263
    iget-object v1, p0, Landroid/content/res/OpThemeResources;->mWrapped:Landroid/content/res/OpThemeResources;

    iget-object v1, v1, Landroid/content/res/OpThemeResources;->mPackageZipFile:Landroid/content/res/OpThemeZipFile;

    invoke-virtual {v1, p1}, Landroid/content/res/OpThemeZipFile;->getThemeInt(I)Ljava/lang/Integer;

    move-result-object v0

    .line 265
    :cond_1
    return-object v0
.end method

.method public hasValues()Z
    .locals 1

    .prologue
    .line 103
    iget-boolean v0, p0, Landroid/content/res/OpThemeResources;->mHasValue:Z

    return v0
.end method

.method protected hasValuesInner()Z
    .locals 2

    .prologue
    .line 165
    const/4 v0, 0x0

    .line 166
    .local v0, "flage":Z
    iget-object v1, p0, Landroid/content/res/OpThemeResources;->mPackageZipFile:Landroid/content/res/OpThemeZipFile;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/content/res/OpThemeResources;->mPackageZipFile:Landroid/content/res/OpThemeZipFile;

    invoke-virtual {v1}, Landroid/content/res/OpThemeZipFile;->hasValues()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/content/res/OpThemeResources;->mPackageZipFile:Landroid/content/res/OpThemeZipFile;

    if-nez v1, :cond_1

    :cond_0
    iget-boolean v1, p0, Landroid/content/res/OpThemeResources;->mIsHasWrapped:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/content/res/OpThemeResources;->mWrapped:Landroid/content/res/OpThemeResources;

    invoke-virtual {v1}, Landroid/content/res/OpThemeResources;->hasValuesInner()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 168
    :cond_1
    const/4 v0, 0x1

    .line 172
    :goto_0
    return v0

    .line 170
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isMutiPackage()Z
    .locals 1

    .prologue
    .line 176
    const/4 v0, 0x0

    return v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 269
    invoke-virtual {p0}, Landroid/content/res/OpThemeResources;->isValidInner()Z

    move-result v0

    return v0
.end method

.method protected isValidInner()Z
    .locals 2

    .prologue
    .line 273
    const/4 v0, 0x0

    .line 274
    .local v0, "isValid":Z
    iget-object v1, p0, Landroid/content/res/OpThemeResources;->mPackageZipFile:Landroid/content/res/OpThemeZipFile;

    if-eqz v1, :cond_0

    .line 275
    iget-object v1, p0, Landroid/content/res/OpThemeResources;->mPackageZipFile:Landroid/content/res/OpThemeZipFile;

    invoke-virtual {v1}, Landroid/content/res/OpThemeZipFile;->isValid()Z

    move-result v0

    .line 277
    :cond_0
    if-nez v0, :cond_1

    iget-boolean v1, p0, Landroid/content/res/OpThemeResources;->mIsHasWrapped:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/content/res/OpThemeResources;->mWrapped:Landroid/content/res/OpThemeResources;

    if-eqz v1, :cond_1

    .line 278
    iget-object v1, p0, Landroid/content/res/OpThemeResources;->mWrapped:Landroid/content/res/OpThemeResources;

    iget-object v1, v1, Landroid/content/res/OpThemeResources;->mPackageZipFile:Landroid/content/res/OpThemeZipFile;

    invoke-virtual {v1}, Landroid/content/res/OpThemeZipFile;->isValid()Z

    move-result v0

    .line 280
    :cond_1
    return v0
.end method
