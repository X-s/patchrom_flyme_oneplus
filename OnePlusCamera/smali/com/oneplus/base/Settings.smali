.class public Lcom/oneplus/base/Settings;
.super Lcom/oneplus/base/HandlerBaseObject;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/base/Settings$1;
    }
.end annotation


# static fields
.field public static final EVENT_VALUE_CHANGED:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/base/SettingsValueChangedEventArgs;",
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
.method static synthetic -wrap0(Lcom/oneplus/base/Settings;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/base/Settings;->onValueChanged(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 24
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string/jumbo v1, "ValueChanged"

    const-class v2, Lcom/oneplus/base/SettingsValueChangedEventArgs;

    const-class v3, Lcom/oneplus/base/Settings;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/base/Settings;->EVENT_VALUE_CHANGED:Lcom/oneplus/base/EventKey;

    .line 32
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/oneplus/base/Settings;->GLOBAL_PREFS:Ljava/lang/ThreadLocal;

    .line 33
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/oneplus/base/Settings;->GLOBAL_DEFAULT_VALUES:Ljava/util/Hashtable;

    .line 34
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/oneplus/base/Settings;->PRIVATE_KEYS:Ljava/util/HashSet;

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "isVolatile"    # Z

    .prologue
    const/4 v2, 0x0

    .line 66
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/oneplus/base/HandlerBaseObject;-><init>(Z)V

    .line 41
    new-instance v1, Lcom/oneplus/base/Settings$1;

    invoke-direct {v1, p0}, Lcom/oneplus/base/Settings$1;-><init>(Lcom/oneplus/base/Settings;)V

    iput-object v1, p0, Lcom/oneplus/base/Settings;->m_PreferenceChangedListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 69
    sget-object v1, Lcom/oneplus/base/Settings;->GLOBAL_PREFS:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    .line 70
    .local v0, "prefs":Landroid/content/SharedPreferences;
    if-nez v0, :cond_0

    .line 72
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 73
    sget-object v1, Lcom/oneplus/base/Settings;->GLOBAL_PREFS:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 75
    :cond_0
    iput-object v0, p0, Lcom/oneplus/base/Settings;->m_GlobalPreferences:Landroid/content/SharedPreferences;

    .line 78
    if-nez p2, :cond_2

    .line 80
    iget-object v1, p0, Lcom/oneplus/base/Settings;->m_GlobalPreferences:Landroid/content/SharedPreferences;

    iput-object v1, p0, Lcom/oneplus/base/Settings;->m_PrivatePreferences:Landroid/content/SharedPreferences;

    .line 81
    iput-object v2, p0, Lcom/oneplus/base/Settings;->m_PrivateVolatileValues:Ljava/util/Hashtable;

    .line 82
    iput-object v2, p0, Lcom/oneplus/base/Settings;->m_PrivateDefaultValues:Ljava/util/Hashtable;

    .line 98
    :goto_0
    iget-object v1, p0, Lcom/oneplus/base/Settings;->m_GlobalPreferences:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/oneplus/base/Settings;->m_PreferenceChangedListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 99
    iget-object v1, p0, Lcom/oneplus/base/Settings;->m_PrivatePreferences:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/base/Settings;->m_PrivatePreferences:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/oneplus/base/Settings;->m_GlobalPreferences:Landroid/content/SharedPreferences;

    if-eq v1, v2, :cond_1

    .line 100
    iget-object v1, p0, Lcom/oneplus/base/Settings;->m_PrivatePreferences:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/oneplus/base/Settings;->m_PreferenceChangedListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 103
    :cond_1
    iput-object p2, p0, Lcom/oneplus/base/Settings;->m_Name:Ljava/lang/String;

    .line 104
    iput-boolean p3, p0, Lcom/oneplus/base/Settings;->m_IsVolatile:Z

    .line 63
    return-void

    .line 84
    :cond_2
    if-nez p3, :cond_3

    .line 86
    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/base/Settings;->m_PrivatePreferences:Landroid/content/SharedPreferences;

    .line 87
    iput-object v2, p0, Lcom/oneplus/base/Settings;->m_PrivateVolatileValues:Ljava/util/Hashtable;

    .line 88
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/oneplus/base/Settings;->m_PrivateDefaultValues:Ljava/util/Hashtable;

    goto :goto_0

    .line 92
    :cond_3
    iput-object v2, p0, Lcom/oneplus/base/Settings;->m_PrivatePreferences:Landroid/content/SharedPreferences;

    .line 93
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/oneplus/base/Settings;->m_PrivateVolatileValues:Ljava/util/Hashtable;

    .line 94
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/oneplus/base/Settings;->m_PrivateDefaultValues:Ljava/util/Hashtable;

    goto :goto_0
.end method

.method public static addPrivateKey(Ljava/lang/String;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 114
    sget-object v1, Lcom/oneplus/base/Settings;->PRIVATE_KEYS:Ljava/util/HashSet;

    monitor-enter v1

    .line 116
    :try_start_0
    sget-object v0, Lcom/oneplus/base/Settings;->PRIVATE_KEYS:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 112
    return-void

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private onValueChanged(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 429
    invoke-static {p1}, Lcom/oneplus/base/SettingsValueChangedEventArgs;->obtain(Ljava/lang/String;)Lcom/oneplus/base/SettingsValueChangedEventArgs;

    move-result-object v0

    .line 430
    .local v0, "e":Lcom/oneplus/base/SettingsValueChangedEventArgs;
    sget-object v1, Lcom/oneplus/base/Settings;->EVENT_VALUE_CHANGED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/base/Settings;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 431
    invoke-virtual {v0}, Lcom/oneplus/base/SettingsValueChangedEventArgs;->recycle()V

    .line 427
    return-void
.end method

.method private set(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "editor"    # Landroid/content/SharedPreferences$Editor;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 488
    instance-of v0, p3, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 489
    check-cast p3, Ljava/lang/Boolean;

    .end local p3    # "value":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 486
    :goto_0
    return-void

    .line 490
    .restart local p3    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v0, p3, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 491
    check-cast p3, Ljava/lang/Integer;

    .end local p3    # "value":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 492
    .restart local p3    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v0, p3, Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 493
    check-cast p3, Ljava/lang/Long;

    .end local p3    # "value":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p1, p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 494
    .restart local p3    # "value":Ljava/lang/Object;
    :cond_2
    if-eqz p3, :cond_3

    .line 495
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 497
    :cond_3
    invoke-interface {p1, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public static setGlobalDefaultValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 522
    sget-object v1, Lcom/oneplus/base/Settings;->GLOBAL_DEFAULT_VALUES:Ljava/util/Hashtable;

    monitor-enter v1

    .line 524
    :try_start_0
    sget-object v0, Lcom/oneplus/base/Settings;->GLOBAL_DEFAULT_VALUES:Ljava/util/Hashtable;

    invoke-virtual {v0, p0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 520
    return-void

    .line 522
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final getAllKeys()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 127
    iget-object v3, p0, Lcom/oneplus/base/Settings;->m_GlobalPreferences:Landroid/content/SharedPreferences;

    if-nez v3, :cond_2

    const/4 v0, 0x0

    .line 128
    :goto_0
    iget-object v3, p0, Lcom/oneplus/base/Settings;->m_PrivatePreferences:Landroid/content/SharedPreferences;

    if-nez v3, :cond_3

    const/4 v2, 0x0

    .line 129
    :goto_1
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 130
    .local v1, "keys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 131
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 132
    :cond_0
    if-eqz v2, :cond_1

    .line 133
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 134
    :cond_1
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    return-object v3

    .line 127
    .end local v1    # "keys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_2
    iget-object v3, p0, Lcom/oneplus/base/Settings;->m_GlobalPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .local v0, "globalAll":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    goto :goto_0

    .line 128
    .end local v0    # "globalAll":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    :cond_3
    iget-object v3, p0, Lcom/oneplus/base/Settings;->m_PrivatePreferences:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    .local v2, "privateAll":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    goto :goto_1
.end method

.method public final getBoolean(Ljava/lang/String;)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 145
    invoke-virtual {p0, p1}, Lcom/oneplus/base/Settings;->getDefaultValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 146
    .local v1, "obj":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    check-cast v1, Ljava/lang/Boolean;

    .end local v1    # "obj":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 147
    .local v0, "defaultValue":Z
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/oneplus/base/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    return v2

    .line 146
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
    .line 159
    sget-object v2, Lcom/oneplus/base/Settings;->PRIVATE_KEYS:Ljava/util/HashSet;

    monitor-enter v2

    .line 161
    :try_start_0
    sget-object v1, Lcom/oneplus/base/Settings;->PRIVATE_KEYS:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 162
    iget-object v1, p0, Lcom/oneplus/base/Settings;->m_GlobalPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v2

    return v1

    .line 163
    :cond_0
    :try_start_1
    iget-boolean v1, p0, Lcom/oneplus/base/Settings;->m_IsVolatile:Z

    if-nez v1, :cond_1

    .line 164
    iget-object v1, p0, Lcom/oneplus/base/Settings;->m_PrivatePreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    monitor-exit v2

    return v1

    :cond_1
    monitor-exit v2

    .line 166
    iget-object v2, p0, Lcom/oneplus/base/Settings;->m_PrivateVolatileValues:Ljava/util/Hashtable;

    monitor-enter v2

    .line 168
    :try_start_2
    iget-object v1, p0, Lcom/oneplus/base/Settings;->m_PrivateVolatileValues:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 169
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/lang/Boolean;

    .end local v0    # "value":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result p2

    .end local p2    # "defaultValue":Z
    :cond_2
    monitor-exit v2

    return p2

    .line 159
    .restart local p2    # "defaultValue":Z
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 166
    :catchall_1
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getDefaultValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 182
    iget-object v1, p0, Lcom/oneplus/base/Settings;->m_PrivateDefaultValues:Ljava/util/Hashtable;

    if-eqz v1, :cond_1

    .line 184
    iget-object v2, p0, Lcom/oneplus/base/Settings;->m_PrivateDefaultValues:Ljava/util/Hashtable;

    monitor-enter v2

    .line 186
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/base/Settings;->m_PrivateDefaultValues:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 187
    .local v0, "value":Ljava/lang/Object;
    if-eqz v0, :cond_0

    monitor-exit v2

    .line 188
    return-object v0

    :cond_0
    monitor-exit v2

    .line 193
    .end local v0    # "value":Ljava/lang/Object;
    :cond_1
    sget-object v2, Lcom/oneplus/base/Settings;->GLOBAL_DEFAULT_VALUES:Ljava/util/Hashtable;

    monitor-enter v2

    .line 195
    :try_start_1
    sget-object v1, Lcom/oneplus/base/Settings;->GLOBAL_DEFAULT_VALUES:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 196
    .restart local v0    # "value":Ljava/lang/Object;
    if-eqz v0, :cond_2

    monitor-exit v2

    .line 197
    return-object v0

    .line 184
    .end local v0    # "value":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .restart local v0    # "value":Ljava/lang/Object;
    :cond_2
    monitor-exit v2

    .line 201
    return-object v3

    .line 193
    .end local v0    # "value":Ljava/lang/Object;
    :catchall_1
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public final getEnum(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Enum;
    .locals 5
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
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v4, 0x0

    .line 215
    invoke-virtual {p0, p1}, Lcom/oneplus/base/Settings;->getDefaultValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 217
    .local v1, "obj":Ljava/lang/Object;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne p2, v3, :cond_0

    move-object v0, v1

    .line 218
    check-cast v0, Ljava/lang/Enum;

    .line 226
    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/oneplus/base/Settings;->getEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v3

    return-object v3

    .line 221
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Enum;

    .line 222
    .local v2, "values":[Ljava/lang/Enum;, "[TT;"
    array-length v3, v2

    if-lez v3, :cond_1

    aget-object v0, v2, v4

    .local v0, "defalutValue":Ljava/lang/Enum;, "TT;"
    goto :goto_0

    .end local v0    # "defalutValue":Ljava/lang/Enum;, "TT;"
    :cond_1
    const/4 v0, 0x0

    .local v0, "defalutValue":Ljava/lang/Enum;, "TT;"
    goto :goto_0
.end method

.method public final getEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;
    .locals 4
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
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p3, "defalutValue":Ljava/lang/Enum;, "TT;"
    const/4 v0, 0x0

    .line 240
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    .line 241
    .local v0, "defStringValue":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/oneplus/base/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 244
    .local v2, "name":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 248
    :try_start_0
    invoke-static {p2, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 251
    :catch_0
    move-exception v1

    .line 253
    :cond_1
    return-object p3
.end method

.method public final getInt(Ljava/lang/String;)I
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 264
    invoke-virtual {p0, p1}, Lcom/oneplus/base/Settings;->getDefaultValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 265
    .local v1, "obj":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    check-cast v1, Ljava/lang/Integer;

    .end local v1    # "obj":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 266
    .local v0, "defaultValue":I
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/oneplus/base/Settings;->getInt(Ljava/lang/String;I)I

    move-result v2

    return v2

    .line 265
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
    .line 278
    sget-object v2, Lcom/oneplus/base/Settings;->PRIVATE_KEYS:Ljava/util/HashSet;

    monitor-enter v2

    .line 280
    :try_start_0
    sget-object v1, Lcom/oneplus/base/Settings;->PRIVATE_KEYS:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 281
    iget-object v1, p0, Lcom/oneplus/base/Settings;->m_GlobalPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v2

    return v1

    .line 282
    :cond_0
    :try_start_1
    iget-boolean v1, p0, Lcom/oneplus/base/Settings;->m_IsVolatile:Z

    if-nez v1, :cond_1

    .line 283
    iget-object v1, p0, Lcom/oneplus/base/Settings;->m_PrivatePreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    monitor-exit v2

    return v1

    :cond_1
    monitor-exit v2

    .line 285
    iget-object v2, p0, Lcom/oneplus/base/Settings;->m_PrivateVolatileValues:Ljava/util/Hashtable;

    monitor-enter v2

    .line 287
    :try_start_2
    iget-object v1, p0, Lcom/oneplus/base/Settings;->m_PrivateVolatileValues:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 288
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "value":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result p2

    .end local p2    # "defaultValue":I
    :cond_2
    monitor-exit v2

    return p2

    .line 278
    .restart local p2    # "defaultValue":I
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 285
    :catchall_1
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public final getLong(Ljava/lang/String;)J
    .locals 6
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 300
    invoke-virtual {p0, p1}, Lcom/oneplus/base/Settings;->getDefaultValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 302
    .local v2, "obj":Ljava/lang/Object;
    instance-of v3, v2, Ljava/lang/Long;

    if-eqz v3, :cond_0

    move-object v3, v2

    .line 303
    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 304
    :cond_0
    instance-of v3, v2, Ljava/lang/Integer;

    if-eqz v3, :cond_1

    .line 305
    check-cast v2, Ljava/lang/Integer;

    .end local v2    # "obj":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v0, v3

    .line 308
    .local v0, "defaultValue":J
    :goto_0
    invoke-virtual {p0, p1, v0, v1}, Lcom/oneplus/base/Settings;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    return-wide v4

    .line 307
    .end local v0    # "defaultValue":J
    .restart local v2    # "obj":Ljava/lang/Object;
    :cond_1
    const-wide/16 v0, 0x0

    .restart local v0    # "defaultValue":J
    goto :goto_0
.end method

.method public final getLong(Ljava/lang/String;J)J
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .prologue
    .line 320
    sget-object v2, Lcom/oneplus/base/Settings;->PRIVATE_KEYS:Ljava/util/HashSet;

    monitor-enter v2

    .line 322
    :try_start_0
    sget-object v1, Lcom/oneplus/base/Settings;->PRIVATE_KEYS:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 323
    iget-object v1, p0, Lcom/oneplus/base/Settings;->m_GlobalPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v4

    monitor-exit v2

    return-wide v4

    .line 324
    :cond_0
    :try_start_1
    iget-boolean v1, p0, Lcom/oneplus/base/Settings;->m_IsVolatile:Z

    if-nez v1, :cond_1

    .line 325
    iget-object v1, p0, Lcom/oneplus/base/Settings;->m_PrivatePreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v4

    monitor-exit v2

    return-wide v4

    :cond_1
    monitor-exit v2

    .line 327
    iget-object v2, p0, Lcom/oneplus/base/Settings;->m_PrivateVolatileValues:Ljava/util/Hashtable;

    monitor-enter v2

    .line 329
    :try_start_2
    iget-object v1, p0, Lcom/oneplus/base/Settings;->m_PrivateVolatileValues:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 330
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_2

    .line 331
    check-cast v0, Ljava/lang/Long;

    .end local v0    # "value":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-wide v4

    monitor-exit v2

    return-wide v4

    .line 320
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 332
    .restart local v0    # "value":Ljava/lang/Object;
    :cond_2
    :try_start_3
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_3

    .line 333
    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "value":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v1

    int-to-long v4, v1

    monitor-exit v2

    return-wide v4

    .restart local v0    # "value":Ljava/lang/Object;
    :cond_3
    monitor-exit v2

    .line 334
    return-wide p2

    .line 327
    .end local v0    # "value":Ljava/lang/Object;
    :catchall_1
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/oneplus/base/Settings;->m_Name:Ljava/lang/String;

    return-object v0
.end method

.method public final getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 356
    invoke-virtual {p0, p1}, Lcom/oneplus/base/Settings;->getDefaultValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 357
    .local v1, "obj":Ljava/lang/Object;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 358
    .local v0, "defaultValue":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/oneplus/base/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public final getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 370
    sget-object v2, Lcom/oneplus/base/Settings;->PRIVATE_KEYS:Ljava/util/HashSet;

    monitor-enter v2

    .line 372
    :try_start_0
    sget-object v1, Lcom/oneplus/base/Settings;->PRIVATE_KEYS:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 373
    iget-object v1, p0, Lcom/oneplus/base/Settings;->m_GlobalPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v2

    return-object v1

    .line 374
    :cond_0
    :try_start_1
    iget-boolean v1, p0, Lcom/oneplus/base/Settings;->m_IsVolatile:Z

    if-nez v1, :cond_1

    .line 375
    iget-object v1, p0, Lcom/oneplus/base/Settings;->m_PrivatePreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    monitor-exit v2

    return-object v1

    :cond_1
    monitor-exit v2

    .line 377
    iget-object v2, p0, Lcom/oneplus/base/Settings;->m_PrivateVolatileValues:Ljava/util/Hashtable;

    monitor-enter v2

    .line 379
    :try_start_2
    iget-object v1, p0, Lcom/oneplus/base/Settings;->m_PrivateVolatileValues:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 380
    .local v0, "value":Ljava/lang/Object;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object p2

    .end local p2    # "defaultValue":Ljava/lang/String;
    :cond_2
    monitor-exit v2

    return-object p2

    .line 370
    .end local v0    # "value":Ljava/lang/Object;
    .restart local p2    # "defaultValue":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 377
    :catchall_1
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 389
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 396
    invoke-super {p0, p1}, Lcom/oneplus/base/HandlerBaseObject;->handleMessage(Landroid/os/Message;)V

    .line 387
    :goto_0
    return-void

    .line 392
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/oneplus/base/Settings;->onValueChanged(Ljava/lang/String;)V

    goto :goto_0

    .line 389
    nop

    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_0
    .end packed-switch
.end method

.method public final isVolatile()Z
    .locals 1

    .prologue
    .line 408
    iget-boolean v0, p0, Lcom/oneplus/base/Settings;->m_IsVolatile:Z

    return v0
.end method

.method protected onRelease()V
    .locals 2

    .prologue
    .line 417
    iget-object v0, p0, Lcom/oneplus/base/Settings;->m_GlobalPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/oneplus/base/Settings;->m_PreferenceChangedListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 418
    iget-object v0, p0, Lcom/oneplus/base/Settings;->m_PrivatePreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/base/Settings;->m_PrivatePreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/oneplus/base/Settings;->m_GlobalPreferences:Landroid/content/SharedPreferences;

    if-eq v0, v1, :cond_0

    .line 419
    iget-object v0, p0, Lcom/oneplus/base/Settings;->m_PrivatePreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/oneplus/base/Settings;->m_PreferenceChangedListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 422
    :cond_0
    invoke-super {p0}, Lcom/oneplus/base/HandlerBaseObject;->onRelease()V

    .line 414
    return-void
.end method

.method public final reset(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 441
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/base/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 439
    return-void
.end method

.method public final set(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 452
    sget-object v2, Lcom/oneplus/base/Settings;->PRIVATE_KEYS:Ljava/util/HashSet;

    monitor-enter v2

    .line 454
    :try_start_0
    sget-object v1, Lcom/oneplus/base/Settings;->PRIVATE_KEYS:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 456
    iget-object v1, p0, Lcom/oneplus/base/Settings;->m_GlobalPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 457
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-direct {p0, v0, p1, p2}, Lcom/oneplus/base/Settings;->set(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Ljava/lang/Object;)V

    .line 458
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 459
    return-void

    .line 461
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    :try_start_1
    iget-boolean v1, p0, Lcom/oneplus/base/Settings;->m_IsVolatile:Z

    if-nez v1, :cond_1

    .line 463
    iget-object v1, p0, Lcom/oneplus/base/Settings;->m_PrivatePreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 464
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    invoke-direct {p0, v0, p1, p2}, Lcom/oneplus/base/Settings;->set(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Ljava/lang/Object;)V

    .line 465
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    .line 466
    return-void

    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    monitor-exit v2

    .line 469
    iget-object v2, p0, Lcom/oneplus/base/Settings;->m_PrivateVolatileValues:Ljava/util/Hashtable;

    monitor-enter v2

    .line 471
    :try_start_2
    instance-of v1, p2, Ljava/lang/Boolean;

    if-nez v1, :cond_2

    instance-of v1, p2, Ljava/lang/Integer;

    if-nez v1, :cond_2

    instance-of v1, p2, Ljava/lang/Long;

    if-eqz v1, :cond_4

    .line 472
    :cond_2
    iget-object v1, p0, Lcom/oneplus/base/Settings;->m_PrivateVolatileValues:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/base/Settings;->isDependencyThread()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 478
    invoke-direct {p0, p1}, Lcom/oneplus/base/Settings;->onValueChanged(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_1
    monitor-exit v2

    .line 450
    return-void

    .line 452
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 473
    :cond_4
    if-eqz p2, :cond_5

    .line 474
    :try_start_3
    iget-object v1, p0, Lcom/oneplus/base/Settings;->m_PrivateVolatileValues:Ljava/util/Hashtable;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 469
    :catchall_1
    move-exception v1

    monitor-exit v2

    throw v1

    .line 475
    :cond_5
    :try_start_4
    iget-object v1, p0, Lcom/oneplus/base/Settings;->m_PrivateVolatileValues:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 476
    iget-object v1, p0, Lcom/oneplus/base/Settings;->m_PrivateVolatileValues:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 480
    :cond_6
    const/16 v1, 0x2710

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {p0, v1, v3, v4, p1}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1
.end method

.method public final setDefaultValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 508
    iget-object v1, p0, Lcom/oneplus/base/Settings;->m_PrivateDefaultValues:Ljava/util/Hashtable;

    monitor-enter v1

    .line 510
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/base/Settings;->m_PrivateDefaultValues:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 506
    return-void

    .line 508
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 533
    iget-object v0, p0, Lcom/oneplus/base/Settings;->m_Name:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 534
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/oneplus/base/Settings;->m_Name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oneplus/base/Settings;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 535
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "(Global)@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oneplus/base/Settings;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
