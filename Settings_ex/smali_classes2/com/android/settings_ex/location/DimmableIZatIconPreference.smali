.class public Lcom/android/settings_ex/location/DimmableIZatIconPreference;
.super Lcom/android/settings_ex/DimmableIconPreference;
.source "DimmableIZatIconPreference.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DimmableIZatIconPreference"

.field private static mGetConsentMethod:Ljava/lang/reflect/Method;

.field private static mGetXtProxyMethod:Ljava/lang/reflect/Method;

.field private static mIzatPackage:Ljava/lang/String;

.field private static mLoader:Ldalvik/system/DexClassLoader;

.field private static mNotifierClz:Ljava/lang/Class;

.field private static mShowIzatMethod:Ljava/lang/reflect/Method;

.field private static mXtProxyClz:Ljava/lang/Class;


# instance fields
.field mChecked:Z


# direct methods
.method static synthetic -wrap0(Lcom/android/settings_ex/location/DimmableIZatIconPreference;Z)V
    .locals 0
    .param p1, "dimmed"    # Z

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/location/DimmableIZatIconPreference;->dimIcon(Z)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 126
    invoke-direct {p0, p1, p2, p3, v3}, Lcom/android/settings_ex/DimmableIconPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/lang/CharSequence;)V

    .line 128
    sget-object v3, Lcom/android/settings_ex/location/DimmableIZatIconPreference;->mLoader:Ldalvik/system/DexClassLoader;

    .line 129
    new-array v4, v4, [Ljava/lang/Class;

    sget-object v5, Lcom/android/settings_ex/location/DimmableIZatIconPreference;->mNotifierClz:Ljava/lang/Class;

    aput-object v5, v4, v6

    .line 130
    new-instance v5, Lcom/android/settings_ex/location/DimmableIZatIconPreference$1;

    invoke-direct {v5, p0}, Lcom/android/settings_ex/location/DimmableIZatIconPreference$1;-><init>(Lcom/android/settings_ex/location/DimmableIZatIconPreference;)V

    .line 128
    invoke-static {v3, v4, v5}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v1

    .line 147
    .local v1, "notifier":Ljava/lang/Object;
    :try_start_0
    sget-object v3, Lcom/android/settings_ex/location/DimmableIZatIconPreference;->mGetXtProxyMethod:Ljava/lang/reflect/Method;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 148
    const/4 v5, 0x0

    aput-object p1, v4, v5

    .line 149
    const/4 v5, 0x1

    aput-object v1, v4, v5

    .line 147
    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 150
    .local v2, "xt":Ljava/lang/Object;
    sget-object v3, Lcom/android/settings_ex/location/DimmableIZatIconPreference;->mGetConsentMethod:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings_ex/location/DimmableIZatIconPreference;->mChecked:Z
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    .end local v2    # "xt":Ljava/lang/Object;
    :goto_0
    return-void

    .line 152
    :catch_0
    move-exception v0

    .line 153
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private static load(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 63
    sget-object v1, Lcom/android/settings_ex/location/DimmableIZatIconPreference;->mLoader:Ldalvik/system/DexClassLoader;

    if-nez v1, :cond_1

    .line 65
    :try_start_0
    sget-object v1, Lcom/android/settings_ex/location/DimmableIZatIconPreference;->mXtProxyClz:Ljava/lang/Class;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/settings_ex/location/DimmableIZatIconPreference;->mNotifierClz:Ljava/lang/Class;

    if-nez v1, :cond_1

    .line 66
    :cond_0
    new-instance v1, Ldalvik/system/DexClassLoader;

    const-string/jumbo v2, "/system/framework/izat.xt.srv.jar"

    .line 67
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 69
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 68
    const/4 v5, 0x0

    .line 66
    invoke-direct {v1, v2, v3, v5, v4}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    sput-object v1, Lcom/android/settings_ex/location/DimmableIZatIconPreference;->mLoader:Ldalvik/system/DexClassLoader;

    .line 70
    const-string/jumbo v1, "com.qti.izat.XTProxy"

    .line 72
    sget-object v2, Lcom/android/settings_ex/location/DimmableIZatIconPreference;->mLoader:Ldalvik/system/DexClassLoader;

    .line 71
    const/4 v3, 0x1

    .line 70
    invoke-static {v1, v3, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/android/settings_ex/location/DimmableIZatIconPreference;->mXtProxyClz:Ljava/lang/Class;

    .line 73
    const-string/jumbo v1, "com.qti.izat.XTProxy$Notifier"

    .line 75
    sget-object v2, Lcom/android/settings_ex/location/DimmableIZatIconPreference;->mLoader:Ldalvik/system/DexClassLoader;

    .line 74
    const/4 v3, 0x1

    .line 73
    invoke-static {v1, v3, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/android/settings_ex/location/DimmableIZatIconPreference;->mNotifierClz:Ljava/lang/Class;

    .line 76
    sget-object v1, Lcom/android/settings_ex/location/DimmableIZatIconPreference;->mXtProxyClz:Ljava/lang/Class;

    const-string/jumbo v2, "IZAT_XT_PACKAGE"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sput-object v1, Lcom/android/settings_ex/location/DimmableIZatIconPreference;->mIzatPackage:Ljava/lang/String;

    .line 77
    sget-object v1, Lcom/android/settings_ex/location/DimmableIZatIconPreference;->mXtProxyClz:Ljava/lang/Class;

    const-string/jumbo v2, "getXTProxy"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    .line 78
    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 79
    sget-object v4, Lcom/android/settings_ex/location/DimmableIZatIconPreference;->mNotifierClz:Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 77
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/android/settings_ex/location/DimmableIZatIconPreference;->mGetXtProxyMethod:Ljava/lang/reflect/Method;

    .line 80
    sget-object v1, Lcom/android/settings_ex/location/DimmableIZatIconPreference;->mXtProxyClz:Ljava/lang/Class;

    const-string/jumbo v2, "getUserConsent"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/android/settings_ex/location/DimmableIZatIconPreference;->mGetConsentMethod:Ljava/lang/reflect/Method;

    .line 81
    sget-object v1, Lcom/android/settings_ex/location/DimmableIZatIconPreference;->mXtProxyClz:Ljava/lang/Class;

    const-string/jumbo v2, "showIzat"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    .line 82
    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 83
    const-class v4, Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 81
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/android/settings_ex/location/DimmableIZatIconPreference;->mShowIzatMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :cond_1
    :goto_0
    return-void

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Ljava/lang/Throwable;
    sput-object v6, Lcom/android/settings_ex/location/DimmableIZatIconPreference;->mXtProxyClz:Ljava/lang/Class;

    .line 89
    sput-object v6, Lcom/android/settings_ex/location/DimmableIZatIconPreference;->mNotifierClz:Ljava/lang/Class;

    .line 90
    sput-object v6, Lcom/android/settings_ex/location/DimmableIZatIconPreference;->mIzatPackage:Ljava/lang/String;

    .line 91
    sput-object v6, Lcom/android/settings_ex/location/DimmableIZatIconPreference;->mGetXtProxyMethod:Ljava/lang/reflect/Method;

    .line 92
    sput-object v6, Lcom/android/settings_ex/location/DimmableIZatIconPreference;->mGetConsentMethod:Ljava/lang/reflect/Method;

    .line 93
    sput-object v6, Lcom/android/settings_ex/location/DimmableIZatIconPreference;->mShowIzatMethod:Ljava/lang/reflect/Method;

    .line 94
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static newInstance(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/android/settings_ex/location/InjectedSetting;)Lcom/android/settings_ex/DimmableIconPreference;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contentDescription"    # Ljava/lang/CharSequence;
    .param p2, "info"    # Lcom/android/settings_ex/location/InjectedSetting;

    .prologue
    const/4 v2, 0x0

    .line 101
    invoke-static {p0}, Lcom/android/settings_ex/location/DimmableIZatIconPreference;->load(Landroid/content/Context;)V

    .line 102
    sget-object v0, Lcom/android/settings_ex/location/DimmableIZatIconPreference;->mIzatPackage:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings_ex/location/DimmableIZatIconPreference;->mIzatPackage:Ljava/lang/String;

    iget-object v1, p2, Lcom/android/settings_ex/location/InjectedSetting;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    new-instance v0, Lcom/android/settings_ex/location/DimmableIZatIconPreference;

    .line 104
    const v1, 0x101008f

    .line 103
    invoke-direct {v0, p0, v2, v1}, Lcom/android/settings_ex/location/DimmableIZatIconPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-object v0

    .line 106
    :cond_0
    new-instance v0, Lcom/android/settings_ex/DimmableIconPreference;

    invoke-direct {v0, p0, p1}, Lcom/android/settings_ex/DimmableIconPreference;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method static showIzat(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 111
    invoke-static {p0}, Lcom/android/settings_ex/location/DimmableIZatIconPreference;->load(Landroid/content/Context;)V

    .line 112
    const/4 v1, 0x1

    .line 114
    .local v1, "show":Z
    :try_start_0
    sget-object v2, Lcom/android/settings_ex/location/DimmableIZatIconPreference;->mShowIzatMethod:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_0

    .line 115
    sget-object v2, Lcom/android/settings_ex/location/DimmableIZatIconPreference;->mShowIzatMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 121
    .end local v1    # "show":Z
    :cond_0
    :goto_0
    return v1

    .line 118
    .restart local v1    # "show":Z
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 2
    .param p1, "view"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .prologue
    const/4 v0, 0x1

    .line 159
    invoke-super {p0, p1}, Lcom/android/settings_ex/DimmableIconPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 160
    invoke-virtual {p0}, Lcom/android/settings_ex/location/DimmableIZatIconPreference;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings_ex/location/DimmableIZatIconPreference;->mChecked:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/location/DimmableIZatIconPreference;->dimIcon(Z)V

    .line 158
    return-void
.end method
