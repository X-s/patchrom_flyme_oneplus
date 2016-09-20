.class public Lcom/oneplus/camera/Settings;
.super Lcom/oneplus/base/HandlerBaseObject;
.source "Settings.java"


# static fields
.field public static final EVENT_VALUE_CHANGED:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/camera/SettingsValueChangedEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field private static final GLOBAL_DEFAULT_VALUES:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final GLOBAL_PREFS:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/content/SharedPreferences;",
            ">;"
        }
    .end annotation
.end field

.field private static final MSG_VALUE_CHANGED:I = 0x2710

.field private static final PRIVATE_KEYS:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final m_GlobalPreferences:Landroid/content/SharedPreferences;

.field private final m_IsVolatile:Z

.field private final m_Name:Ljava/lang/String;

.field private final m_PreferenceChangedListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private final m_PrivateDefaultValues:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final m_PrivatePreferences:Landroid/content/SharedPreferences;

.field private final m_PrivateVolatileValues:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 23
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string v1, "ValueChanged"

    const-class v2, Lcom/oneplus/camera/SettingsValueChangedEventArgs;

    const-class v3, Lcom/oneplus/camera/Settings;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/camera/Settings;->EVENT_VALUE_CHANGED:Lcom/oneplus/base/EventKey;

    .line 31
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/oneplus/camera/Settings;->GLOBAL_PREFS:Ljava/lang/ThreadLocal;

    .line 32
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/oneplus/camera/Settings;->GLOBAL_DEFAULT_VALUES:Ljava/util/Hashtable;

    .line 33
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/oneplus/camera/Settings;->PRIVATE_KEYS:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "isVolatile"    # Z

    .prologue
    const/4 v2, 0x0

    .line 65
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/oneplus/base/HandlerBaseObject;-><init>(Z)V

    .line 40
    new-instance v1, Lcom/oneplus/camera/Settings$1;

    invoke-direct {v1, p0}, Lcom/oneplus/camera/Settings$1;-><init>(Lcom/oneplus/camera/Settings;)V

    iput-object v1, p0, Lcom/oneplus/camera/Settings;->m_PreferenceChangedListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 68
    sget-object v1, Lcom/oneplus/camera/Settings;->GLOBAL_PREFS:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    .line 69
    .local v0, "prefs":Landroid/content/SharedPreferences;
    if-nez v0, :cond_0

    .line 71
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 72
    sget-object v1, Lcom/oneplus/camera/Settings;->GLOBAL_PREFS:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 74
    :cond_0
    iput-object v0, p0, Lcom/oneplus/camera/Settings;->m_GlobalPreferences:Landroid/content/SharedPreferences;

    .line 77
    if-nez p2, :cond_2

    .line 79
    iget-object v1, p0, Lcom/oneplus/camera/Settings;->m_GlobalPreferences:Landroid/content/SharedPreferences;

    iput-object v1, p0, Lcom/oneplus/camera/Settings;->m_PrivatePreferences:Landroid/content/SharedPreferences;

    .line 80
    iput-object v2, p0, Lcom/oneplus/camera/Settings;->m_PrivateVolatileValues:Ljava/util/Hashtable;

    .line 81
    iput-object v2, p0, Lcom/oneplus/camera/Settings;->m_PrivateDefaultValues:Ljava/util/Hashtable;

    .line 97
    :goto_0
    iget-object v1, p0, Lcom/oneplus/camera/Settings;->m_GlobalPreferences:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/oneplus/camera/Settings;->m_PreferenceChangedListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 98
    iget-object v1, p0, Lcom/oneplus/camera/Settings;->m_PrivatePreferences:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/camera/Settings;->m_PrivatePreferences:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/oneplus/camera/Settings;->m_GlobalPreferences:Landroid/content/SharedPreferences;

    if-eq v1, v2, :cond_1

    .line 99
    iget-object v1, p0, Lcom/oneplus/camera/Settings;->m_PrivatePreferences:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/oneplus/camera/Settings;->m_PreferenceChangedListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 102
    :cond_1
    iput-object p2, p0, Lcom/oneplus/camera/Settings;->m_Name:Ljava/lang/String;

    .line 103
    iput-boolean p3, p0, Lcom/oneplus/camera/Settings;->m_IsVolatile:Z

    .line 104
    return-void

    .line 83
    :cond_2
    if-nez p3, :cond_3

    .line 85
    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/Settings;->m_PrivatePreferences:Landroid/content/SharedPreferences;

    .line 86
    iput-object v2, p0, Lcom/oneplus/camera/Settings;->m_PrivateVolatileValues:Ljava/util/Hashtable;

    .line 87
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/oneplus/camera/Settings;->m_PrivateDefaultValues:Ljava/util/Hashtable;

    goto :goto_0

    .line 91
    :cond_3
    iput-object v2, p0, Lcom/oneplus/camera/Settings;->m_PrivatePreferences:Landroid/content/SharedPreferences;

    .line 92
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/oneplus/camera/Settings;->m_PrivateVolatileValues:Ljava/util/Hashtable;

    .line 93
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/oneplus/camera/Settings;->m_PrivateDefaultValues:Ljava/util/Hashtable;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/oneplus/camera/Settings;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/Settings;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/oneplus/camera/Settings;->onValueChanged(Ljava/lang/String;)V

    return-void
.end method

.method public static addPrivateKey(Ljava/lang/String;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 113
    sget-object v1, Lcom/oneplus/camera/Settings;->PRIVATE_KEYS:Ljava/util/HashSet;

    monitor-enter v1

    .line 115
    :try_start_0
    sget-object v0, Lcom/oneplus/camera/Settings;->PRIVATE_KEYS:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 116
    monitor-exit v1

    .line 117
    return-void

    .line 116
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private onValueChanged(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 411
    invoke-static {p1}, Lcom/oneplus/camera/SettingsValueChangedEventArgs;->obtain(Ljava/lang/String;)Lcom/oneplus/camera/SettingsValueChangedEventArgs;

    move-result-object v0

    .line 412
    .local v0, "e":Lcom/oneplus/camera/SettingsValueChangedEventArgs;
    sget-object v1, Lcom/oneplus/camera/Settings;->EVENT_VALUE_CHANGED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/camera/Settings;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 413
    invoke-virtual {v0}, Lcom/oneplus/camera/SettingsValueChangedEventArgs;->recycle()V

    .line 414
    return-void
.end method

.method private set(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "editor"    # Landroid/content/SharedPreferences$Editor;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 470
    instance-of v0, p3, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 471
    check-cast p3, Ljava/lang/Boolean;

    .end local p3    # "value":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 480
    :goto_0
    return-void

    .line 472
    .restart local p3    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v0, p3, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 473
    check-cast p3, Ljava/lang/Integer;

    .end local p3    # "value":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 474
    .restart local p3    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v0, p3, Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 475
    check-cast p3, Ljava/lang/Long;

    .end local p3    # "value":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p1, p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 476
    .restart local p3    # "value":Ljava/lang/Object;
    :cond_2
    if-eqz p3, :cond_3

    .line 477
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 479
    :cond_3
    invoke-interface {p1, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public static setGlobalDefaultValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 504
    sget-object v1, Lcom/oneplus/camera/Settings;->GLOBAL_DEFAULT_VALUES:Ljava/util/Hashtable;

    monitor-enter v1

    .line 506
    :try_start_0
    sget-object v0, Lcom/oneplus/camera/Settings;->GLOBAL_DEFAULT_VALUES:Ljava/util/Hashtable;

    invoke-virtual {v0, p0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    monitor-exit v1

    .line 508
    return-void

    .line 507
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public final getBoolean(Ljava/lang/String;)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 127
    invoke-virtual {p0, p1}, Lcom/oneplus/camera/Settings;->getDefaultValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 128
    .local v1, "obj":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    check-cast v1, Ljava/lang/Boolean;

    .end local v1    # "obj":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 129
    .local v0, "defaultValue":Z
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/oneplus/camera/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    return v2

    .line 128
    .end local v0    # "defaultValue":Z
    .restart local v1    # "obj":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getBoolean(Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    .line 141
    sget-object v2, Lcom/oneplus/camera/Settings;->PRIVATE_KEYS:Ljava/util/HashSet;

    monitor-enter v2

    .line 143
    :try_start_0
    sget-object v1, Lcom/oneplus/camera/Settings;->PRIVATE_KEYS:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 144
    iget-object v1, p0, Lcom/oneplus/camera/Settings;->m_GlobalPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    monitor-exit v2

    .line 151
    :goto_0
    return v1

    .line 145
    :cond_0
    iget-boolean v1, p0, Lcom/oneplus/camera/Settings;->m_IsVolatile:Z

    if-nez v1, :cond_1

    .line 146
    iget-object v1, p0, Lcom/oneplus/camera/Settings;->m_PrivatePreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    monitor-exit v2

    goto :goto_0

    .line 147
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 148
    iget-object v2, p0, Lcom/oneplus/camera/Settings;->m_PrivateVolatileValues:Ljava/util/Hashtable;

    monitor-enter v2

    .line 150
    :try_start_2
    iget-object v1, p0, Lcom/oneplus/camera/Settings;->m_PrivateVolatileValues:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 151
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/lang/Boolean;

    .end local v0    # "value":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_1
    monitor-exit v2

    goto :goto_0

    .line 152
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .restart local v0    # "value":Ljava/lang/Object;
    :cond_2
    move v1, p2

    .line 151
    goto :goto_1
.end method

.method public getDefaultValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 164
    iget-object v1, p0, Lcom/oneplus/camera/Settings;->m_PrivateDefaultValues:Ljava/util/Hashtable;

    if-eqz v1, :cond_1

    .line 166
    iget-object v2, p0, Lcom/oneplus/camera/Settings;->m_PrivateDefaultValues:Ljava/util/Hashtable;

    monitor-enter v2

    .line 168
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/camera/Settings;->m_PrivateDefaultValues:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 169
    .local v0, "value":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 170
    monitor-exit v2

    move-object v1, v0

    .line 183
    :goto_0
    return-object v1

    .line 171
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    .end local v0    # "value":Ljava/lang/Object;
    :cond_1
    sget-object v2, Lcom/oneplus/camera/Settings;->GLOBAL_DEFAULT_VALUES:Ljava/util/Hashtable;

    monitor-enter v2

    .line 177
    :try_start_1
    sget-object v1, Lcom/oneplus/camera/Settings;->GLOBAL_DEFAULT_VALUES:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 178
    .restart local v0    # "value":Ljava/lang/Object;
    if-eqz v0, :cond_2

    .line 179
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v1, v0

    goto :goto_0

    .line 171
    .end local v0    # "value":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 180
    .restart local v0    # "value":Ljava/lang/Object;
    :cond_2
    :try_start_3
    monitor-exit v2

    .line 183
    const/4 v1, 0x0

    goto :goto_0

    .line 180
    .end local v0    # "value":Ljava/lang/Object;
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public final getEnum(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Enum;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum",
            "<TT;>;>(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 197
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1}, Lcom/oneplus/camera/Settings;->getDefaultValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 199
    .local v1, "obj":Ljava/lang/Object;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne p2, v3, :cond_0

    move-object v0, v1

    .line 200
    check-cast v0, Ljava/lang/Enum;

    .line 208
    .local v0, "defalutValue":Ljava/lang/Enum;, "TT;"
    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/oneplus/camera/Settings;->getEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v3

    return-object v3

    .line 203
    .end local v0    # "defalutValue":Ljava/lang/Enum;, "TT;"
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Enum;

    .line 204
    .local v2, "values":[Ljava/lang/Enum;, "[TT;"
    array-length v3, v2

    if-lez v3, :cond_1

    const/4 v3, 0x0

    aget-object v0, v2, v3

    .restart local v0    # "defalutValue":Ljava/lang/Enum;, "TT;"
    :goto_1
    goto :goto_0

    .end local v0    # "defalutValue":Ljava/lang/Enum;, "TT;"
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final getEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum",
            "<TT;>;>(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;TT;)TT;"
        }
    .end annotation

    .prologue
    .line 222
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p3, "defalutValue":Ljava/lang/Enum;, "TT;"
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    .line 223
    .local v0, "defStringValue":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/oneplus/camera/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 226
    .local v1, "name":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 230
    :try_start_0
    invoke-static {p2, v1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p3

    .line 235
    .end local p3    # "defalutValue":Ljava/lang/Enum;, "TT;"
    :cond_0
    :goto_1
    return-object p3

    .line 222
    .end local v0    # "defStringValue":Ljava/lang/String;
    .end local v1    # "name":Ljava/lang/String;
    .restart local p3    # "defalutValue":Ljava/lang/Enum;, "TT;"
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 232
    .restart local v0    # "defStringValue":Ljava/lang/String;
    .restart local v1    # "name":Ljava/lang/String;
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public final getInt(Ljava/lang/String;)I
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 246
    invoke-virtual {p0, p1}, Lcom/oneplus/camera/Settings;->getDefaultValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 247
    .local v1, "obj":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    check-cast v1, Ljava/lang/Integer;

    .end local v1    # "obj":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 248
    .local v0, "defaultValue":I
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/oneplus/camera/Settings;->getInt(Ljava/lang/String;I)I

    move-result v2

    return v2

    .line 247
    .end local v0    # "defaultValue":I
    .restart local v1    # "obj":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getInt(Ljava/lang/String;I)I
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 260
    sget-object v2, Lcom/oneplus/camera/Settings;->PRIVATE_KEYS:Ljava/util/HashSet;

    monitor-enter v2

    .line 262
    :try_start_0
    sget-object v1, Lcom/oneplus/camera/Settings;->PRIVATE_KEYS:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 263
    iget-object v1, p0, Lcom/oneplus/camera/Settings;->m_GlobalPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    monitor-exit v2

    .line 270
    :goto_0
    return v1

    .line 264
    :cond_0
    iget-boolean v1, p0, Lcom/oneplus/camera/Settings;->m_IsVolatile:Z

    if-nez v1, :cond_1

    .line 265
    iget-object v1, p0, Lcom/oneplus/camera/Settings;->m_PrivatePreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    monitor-exit v2

    goto :goto_0

    .line 266
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 267
    iget-object v2, p0, Lcom/oneplus/camera/Settings;->m_PrivateVolatileValues:Ljava/util/Hashtable;

    monitor-enter v2

    .line 269
    :try_start_2
    iget-object v1, p0, Lcom/oneplus/camera/Settings;->m_PrivateVolatileValues:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 270
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "value":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_1
    monitor-exit v2

    goto :goto_0

    .line 271
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .restart local v0    # "value":Ljava/lang/Object;
    :cond_2
    move v1, p2

    .line 270
    goto :goto_1
.end method

.method public final getLong(Ljava/lang/String;)J
    .locals 6
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 282
    invoke-virtual {p0, p1}, Lcom/oneplus/camera/Settings;->getDefaultValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 284
    .local v2, "obj":Ljava/lang/Object;
    instance-of v3, v2, Ljava/lang/Long;

    if-eqz v3, :cond_0

    move-object v3, v2

    .line 285
    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 286
    :cond_0
    instance-of v3, v2, Ljava/lang/Integer;

    if-eqz v3, :cond_1

    .line 287
    check-cast v2, Ljava/lang/Integer;

    .end local v2    # "obj":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v0, v3

    .line 290
    .local v0, "defaultValue":J
    :goto_0
    invoke-virtual {p0, p1, v0, v1}, Lcom/oneplus/camera/Settings;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    return-wide v4

    .line 289
    .end local v0    # "defaultValue":J
    .restart local v2    # "obj":Ljava/lang/Object;
    :cond_1
    const-wide/16 v0, 0x0

    .restart local v0    # "defaultValue":J
    goto :goto_0
.end method

.method public final getLong(Ljava/lang/String;J)J
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .prologue
    .line 302
    sget-object v2, Lcom/oneplus/camera/Settings;->PRIVATE_KEYS:Ljava/util/HashSet;

    monitor-enter v2

    .line 304
    :try_start_0
    sget-object v1, Lcom/oneplus/camera/Settings;->PRIVATE_KEYS:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 305
    iget-object v1, p0, Lcom/oneplus/camera/Settings;->m_GlobalPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p2

    .end local p2    # "defaultValue":J
    monitor-exit v2

    .line 316
    :goto_0
    return-wide p2

    .line 306
    .restart local p2    # "defaultValue":J
    :cond_0
    iget-boolean v1, p0, Lcom/oneplus/camera/Settings;->m_IsVolatile:Z

    if-nez v1, :cond_1

    .line 307
    iget-object v1, p0, Lcom/oneplus/camera/Settings;->m_PrivatePreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p2

    .end local p2    # "defaultValue":J
    monitor-exit v2

    goto :goto_0

    .line 308
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local p2    # "defaultValue":J
    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 309
    iget-object v2, p0, Lcom/oneplus/camera/Settings;->m_PrivateVolatileValues:Ljava/util/Hashtable;

    monitor-enter v2

    .line 311
    :try_start_2
    iget-object v1, p0, Lcom/oneplus/camera/Settings;->m_PrivateVolatileValues:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 312
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_2

    .line 313
    check-cast v0, Ljava/lang/Long;

    .end local v0    # "value":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    .end local p2    # "defaultValue":J
    monitor-exit v2

    goto :goto_0

    .line 317
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 314
    .restart local v0    # "value":Ljava/lang/Object;
    .restart local p2    # "defaultValue":J
    :cond_2
    :try_start_3
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_3

    .line 315
    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "value":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long p2, v1

    monitor-exit v2

    goto :goto_0

    .line 316
    .restart local v0    # "value":Ljava/lang/Object;
    :cond_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/oneplus/camera/Settings;->m_Name:Ljava/lang/String;

    return-object v0
.end method

.method public final getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 338
    invoke-virtual {p0, p1}, Lcom/oneplus/camera/Settings;->getDefaultValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 339
    .local v1, "obj":Ljava/lang/Object;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 340
    .local v0, "defaultValue":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/oneplus/camera/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 339
    .end local v0    # "defaultValue":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 352
    sget-object v2, Lcom/oneplus/camera/Settings;->PRIVATE_KEYS:Ljava/util/HashSet;

    monitor-enter v2

    .line 354
    :try_start_0
    sget-object v1, Lcom/oneplus/camera/Settings;->PRIVATE_KEYS:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 355
    iget-object v1, p0, Lcom/oneplus/camera/Settings;->m_GlobalPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    monitor-exit v2

    .line 362
    :goto_0
    return-object v1

    .line 356
    :cond_0
    iget-boolean v1, p0, Lcom/oneplus/camera/Settings;->m_IsVolatile:Z

    if-nez v1, :cond_1

    .line 357
    iget-object v1, p0, Lcom/oneplus/camera/Settings;->m_PrivatePreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    monitor-exit v2

    goto :goto_0

    .line 358
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 359
    iget-object v2, p0, Lcom/oneplus/camera/Settings;->m_PrivateVolatileValues:Ljava/util/Hashtable;

    monitor-enter v2

    .line 361
    :try_start_2
    iget-object v1, p0, Lcom/oneplus/camera/Settings;->m_PrivateVolatileValues:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 362
    .local v0, "value":Ljava/lang/Object;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    monitor-exit v2

    goto :goto_0

    .line 363
    .end local v0    # "value":Ljava/lang/Object;
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .restart local v0    # "value":Ljava/lang/Object;
    :cond_2
    move-object v1, p2

    .line 362
    goto :goto_1
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 371
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 378
    invoke-super {p0, p1}, Lcom/oneplus/base/HandlerBaseObject;->handleMessage(Landroid/os/Message;)V

    .line 381
    :goto_0
    return-void

    .line 374
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/Settings;->onValueChanged(Ljava/lang/String;)V

    goto :goto_0

    .line 371
    nop

    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_0
    .end packed-switch
.end method

.method public final isVolatile()Z
    .locals 1

    .prologue
    .line 390
    iget-boolean v0, p0, Lcom/oneplus/camera/Settings;->m_IsVolatile:Z

    return v0
.end method

.method protected onRelease()V
    .locals 2

    .prologue
    .line 399
    iget-object v0, p0, Lcom/oneplus/camera/Settings;->m_GlobalPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/oneplus/camera/Settings;->m_PreferenceChangedListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 400
    iget-object v0, p0, Lcom/oneplus/camera/Settings;->m_PrivatePreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/Settings;->m_PrivatePreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/oneplus/camera/Settings;->m_GlobalPreferences:Landroid/content/SharedPreferences;

    if-eq v0, v1, :cond_0

    .line 401
    iget-object v0, p0, Lcom/oneplus/camera/Settings;->m_PrivatePreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/oneplus/camera/Settings;->m_PreferenceChangedListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 404
    :cond_0
    invoke-super {p0}, Lcom/oneplus/base/HandlerBaseObject;->onRelease()V

    .line 405
    return-void
.end method

.method public final reset(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 423
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/camera/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 424
    return-void
.end method

.method public final set(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 434
    sget-object v2, Lcom/oneplus/camera/Settings;->PRIVATE_KEYS:Ljava/util/HashSet;

    monitor-enter v2

    .line 436
    :try_start_0
    sget-object v1, Lcom/oneplus/camera/Settings;->PRIVATE_KEYS:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 438
    iget-object v1, p0, Lcom/oneplus/camera/Settings;->m_GlobalPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 439
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-direct {p0, v0, p1, p2}, Lcom/oneplus/camera/Settings;->set(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Ljava/lang/Object;)V

    .line 440
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 441
    monitor-exit v2

    .line 464
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :goto_0
    return-void

    .line 443
    :cond_0
    iget-boolean v1, p0, Lcom/oneplus/camera/Settings;->m_IsVolatile:Z

    if-nez v1, :cond_1

    .line 445
    iget-object v1, p0, Lcom/oneplus/camera/Settings;->m_PrivatePreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 446
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    invoke-direct {p0, v0, p1, p2}, Lcom/oneplus/camera/Settings;->set(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Ljava/lang/Object;)V

    .line 447
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 448
    monitor-exit v2

    goto :goto_0

    .line 450
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 451
    iget-object v2, p0, Lcom/oneplus/camera/Settings;->m_PrivateVolatileValues:Ljava/util/Hashtable;

    monitor-enter v2

    .line 453
    :try_start_2
    instance-of v1, p2, Ljava/lang/Boolean;

    if-nez v1, :cond_2

    instance-of v1, p2, Ljava/lang/Integer;

    if-nez v1, :cond_2

    instance-of v1, p2, Ljava/lang/Long;

    if-eqz v1, :cond_4

    .line 454
    :cond_2
    iget-object v1, p0, Lcom/oneplus/camera/Settings;->m_PrivateVolatileValues:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/oneplus/camera/Settings;->isDependencyThread()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 460
    invoke-direct {p0, p1}, Lcom/oneplus/camera/Settings;->onValueChanged(Ljava/lang/String;)V

    .line 463
    :goto_2
    monitor-exit v2

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 455
    :cond_4
    if-eqz p2, :cond_5

    .line 456
    :try_start_3
    iget-object v1, p0, Lcom/oneplus/camera/Settings;->m_PrivateVolatileValues:Ljava/util/Hashtable;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 457
    :cond_5
    iget-object v1, p0, Lcom/oneplus/camera/Settings;->m_PrivateVolatileValues:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 458
    iget-object v1, p0, Lcom/oneplus/camera/Settings;->m_PrivateVolatileValues:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 462
    :cond_6
    const/16 v1, 0x2710

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {p0, v1, v3, v4, p1}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2
.end method

.method public final setDefaultValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 490
    iget-object v1, p0, Lcom/oneplus/camera/Settings;->m_PrivateDefaultValues:Ljava/util/Hashtable;

    monitor-enter v1

    .line 492
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/camera/Settings;->m_PrivateDefaultValues:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    monitor-exit v1

    .line 494
    return-void

    .line 493
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 515
    iget-object v0, p0, Lcom/oneplus/camera/Settings;->m_Name:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 516
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/oneplus/camera/Settings;->m_Name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 517
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(Global)@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
