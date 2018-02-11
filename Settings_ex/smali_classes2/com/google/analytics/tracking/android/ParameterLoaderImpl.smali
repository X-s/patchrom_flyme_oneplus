.class Lcom/google/analytics/tracking/android/ParameterLoaderImpl;
.super Ljava/lang/Object;
.source "ParameterLoaderImpl.java"

# interfaces
.implements Lcom/google/analytics/tracking/android/ParameterLoader;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mOverrideResourcePackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    if-eqz p1, :cond_0

    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/ParameterLoaderImpl;->mContext:Landroid/content/Context;

    .line 24
    return-void

    .line 21
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getResourceIdForType(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/analytics/tracking/android/ParameterLoaderImpl;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/google/analytics/tracking/android/ParameterLoaderImpl;->mOverrideResourcePackageName:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/analytics/tracking/android/ParameterLoaderImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 47
    :goto_0
    iget-object v1, p0, Lcom/google/analytics/tracking/android/ParameterLoaderImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1, p2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 37
    return v0

    .line 42
    :cond_1
    iget-object v0, p0, Lcom/google/analytics/tracking/android/ParameterLoaderImpl;->mOverrideResourcePackageName:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getBoolean(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    const-string/jumbo v0, "bool"

    .line 62
    invoke-direct {p0, p1, v0}, Lcom/google/analytics/tracking/android/ParameterLoaderImpl;->getResourceIdForType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 63
    if-eqz v0, :cond_0

    const-string/jumbo v1, "true"

    .line 66
    iget-object v2, p0, Lcom/google/analytics/tracking/android/ParameterLoaderImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 64
    :cond_0
    return v1
.end method

.method public getDoubleFromString(Ljava/lang/String;)Ljava/lang/Double;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 92
    invoke-virtual {p0, p1}, Lcom/google/analytics/tracking/android/ParameterLoaderImpl;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 93
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 97
    :try_start_0
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 94
    :cond_0
    return-object v4

    .line 97
    :catch_0
    move-exception v1

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "NumberFormatException parsing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)V

    .line 100
    return-object v4
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 3

    .prologue
    const-string/jumbo v0, "integer"

    .line 72
    invoke-direct {p0, p1, v0}, Lcom/google/analytics/tracking/android/ParameterLoaderImpl;->getResourceIdForType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 73
    if-eqz v0, :cond_0

    .line 77
    :try_start_0
    iget-object v1, p0, Lcom/google/analytics/tracking/android/ParameterLoaderImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 74
    :cond_0
    return p2

    .line 77
    :catch_0
    move-exception v1

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "NumberFormatException parsing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/analytics/tracking/android/ParameterLoaderImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)V

    .line 80
    return p2
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    const-string/jumbo v0, "string"

    .line 52
    invoke-direct {p0, p1, v0}, Lcom/google/analytics/tracking/android/ParameterLoaderImpl;->getResourceIdForType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 53
    if-eqz v0, :cond_0

    .line 56
    iget-object v1, p0, Lcom/google/analytics/tracking/android/ParameterLoaderImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 54
    return-object v0
.end method

.method public isBooleanKeyPresent(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    const-string/jumbo v1, "bool"

    .line 87
    invoke-direct {p0, p1, v1}, Lcom/google/analytics/tracking/android/ParameterLoaderImpl;->getResourceIdForType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setResourcePackageName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/google/analytics/tracking/android/ParameterLoaderImpl;->mOverrideResourcePackageName:Ljava/lang/String;

    .line 107
    return-void
.end method
