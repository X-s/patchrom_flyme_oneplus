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

.method private set(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "editor"    # Landroid/content/SharedPreferences$Editor;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 496
    instance-of v0, p3, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 497
    check-cast p3, Ljava/lang/Boolean;

    .end local p3    # "value":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 494
    :goto_0
    return-void

    .line 498
    .restart local p3    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v0, p3, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 499
    check-cast p3, Ljava/lang/Integer;

    .end local p3    # "value":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 500
    .restart local p3    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v0, p3, Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 501
    check-cast p3, Ljava/lang/Long;

    .end local p3    # "value":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p1, p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 502
    .restart local p3    # "value":Ljava/lang/Object;
    :cond_2
    if-eqz p3, :cond_3

    .line 503
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 505
    :cond_3
    invoke-interface {p1, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public static setGlobalDefaultValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 530
    sget-object v1, Lcom/oneplus/base/Settings;->GLOBAL_DEFAULT_VALUES:Ljava/util/Hashtable;

    monitor-enter v1

    .line 532
    :try_start_0
    sget-object v0, Lcom/oneplus/base/Settings;->GLOBAL_DEFAULT_VALUES:Ljava/util/Hashtable;

    invoke-virtual {v0, p0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 528
    return-void

    .line 530
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

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Lcom/oneplus/base/Settings;->isPrivateKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 160
    iget-object v1, p0, Lcom/oneplus/base/Settings;->m_GlobalPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1

    .line 161
    :cond_0
    iget-boolean v1, p0, Lcom/oneplus/base/Settings;->m_IsVolatile:Z

    if-nez v1, :cond_1

    .line 162
    iget-object v1, p0, Lcom/oneplus/base/Settings;->m_PrivatePreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1

    .line 163
    :cond_1
    iget-object v2, p0, Lcom/oneplus/base/Settings;->m_PrivateVolatileValues:Ljava/util/Hashtable;

    monitor-enter v2

    .line 165
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/base/Settings;->m_PrivateVolatileValues:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 166
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/lang/Boolean;

    .end local v0    # "value":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result p2

    .end local p2    # "defaultValue":Z
    :cond_2
    monitor-exit v2

    return p2

    .line 163
    .restart local p2    # "defaultValue":Z
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getDefaultValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 179
    iget-object v1, p0, Lcom/oneplus/base/Settings;->m_PrivateDefaultValues:Ljava/util/Hashtable;

    if-eqz v1, :cond_1

    .line 181
    iget-object v2, p0, Lcom/oneplus/base/Settings;->m_PrivateDefaultValues:Ljava/util/Hashtable;

    monitor-enter v2

    .line 183
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/base/Settings;->m_PrivateDefaultValues:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 184
    .local v0, "value":Ljava/lang/Object;
    if-eqz v0, :cond_0

    monitor-exit v2

    .line 185
    return-object v0

    :cond_0
    monitor-exit v2

    .line 190
    .end local v0    # "value":Ljava/lang/Object;
    :cond_1
    sget-object v2, Lcom/oneplus/base/Settings;->GLOBAL_DEFAULT_VALUES:Ljava/util/Hashtable;

    monitor-enter v2

    .line 192
    :try_start_1
    sget-object v1, Lcom/oneplus/base/Settings;->GLOBAL_DEFAULT_VALUES:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 193
    .restart local v0    # "value":Ljava/lang/Object;
    if-eqz v0, :cond_2

    monitor-exit v2

    .line 194
    return-object v0

    .line 181
    .end local v0    # "value":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .restart local v0    # "value":Ljava/lang/Object;
    :cond_2
    monitor-exit v2

    .line 198
    return-object v3

    .line 190
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

    .line 212
    invoke-virtual {p0, p1}, Lcom/oneplus/base/Settings;->getDefaultValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 214
    .local v1, "obj":Ljava/lang/Object;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne p2, v3, :cond_0

    move-object v0, v1

    .line 215
    check-cast v0, Ljava/lang/Enum;

    .line 223
    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/oneplus/base/Settings;->getEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v3

    return-object v3

    .line 218
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Enum;

    .line 219
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

    .line 237
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    .line 238
    .local v0, "defStringValue":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/oneplus/base/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 241
    .local v2, "name":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 245
    :try_start_0
    invoke-static {p2, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 248
    :catch_0
    move-exception v1

    .line 250
    :cond_1
    return-object p3
.end method

.method public final getInt(Ljava/lang/String;)I
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 261
    invoke-virtual {p0, p1}, Lcom/oneplus/base/Settings;->getDefaultValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 262
    .local v1, "obj":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    check-cast v1, Ljava/lang/Integer;

    .end local v1    # "obj":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 263
    .local v0, "defaultValue":I
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/oneplus/base/Settings;->getInt(Ljava/lang/String;I)I

    move-result v2

    return v2

    .line 262
    .end local v0    # "defaultValue":I
    .restart local v1    # "obj":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 275
    invoke-virtual {p0, p1}, Lcom/oneplus/base/Settings;->isPrivateKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 276
    iget-object v1, p0, Lcom/oneplus/base/Settings;->m_GlobalPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1

    .line 277
    :cond_0
    iget-boolean v1, p0, Lcom/oneplus/base/Settings;->m_IsVolatile:Z

    if-nez v1, :cond_1

    .line 278
    iget-object v1, p0, Lcom/oneplus/base/Settings;->m_PrivatePreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1

    .line 279
    :cond_1
    iget-object v2, p0, Lcom/oneplus/base/Settings;->m_PrivateVolatileValues:Ljava/util/Hashtable;

    monitor-enter v2

    .line 281
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/base/Settings;->m_PrivateVolatileValues:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 282
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "value":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result p2

    .end local p2    # "defaultValue":I
    :cond_2
    monitor-exit v2

    return p2

    .line 279
    .restart local p2    # "defaultValue":I
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public final getLong(Ljava/lang/String;)J
    .locals 6
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 294
    invoke-virtual {p0, p1}, Lcom/oneplus/base/Settings;->getDefaultValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 296
    .local v2, "obj":Ljava/lang/Object;
    instance-of v3, v2, Ljava/lang/Long;

    if-eqz v3, :cond_0

    move-object v3, v2

    .line 297
    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 298
    :cond_0
    instance-of v3, v2, Ljava/lang/Integer;

    if-eqz v3, :cond_1

    .line 299
    check-cast v2, Ljava/lang/Integer;

    .end local v2    # "obj":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v0, v3

    .line 302
    .local v0, "defaultValue":J
    :goto_0
    invoke-virtual {p0, p1, v0, v1}, Lcom/oneplus/base/Settings;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    return-wide v4

    .line 301
    .end local v0    # "defaultValue":J
    .restart local v2    # "obj":Ljava/lang/Object;
    :cond_1
    const-wide/16 v0, 0x0

    .restart local v0    # "defaultValue":J
    goto :goto_0
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .prologue
    .line 314
    invoke-virtual {p0, p1}, Lcom/oneplus/base/Settings;->isPrivateKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 315
    iget-object v1, p0, Lcom/oneplus/base/Settings;->m_GlobalPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    return-wide v2

    .line 316
    :cond_0
    iget-boolean v1, p0, Lcom/oneplus/base/Settings;->m_IsVolatile:Z

    if-nez v1, :cond_1

    .line 317
    iget-object v1, p0, Lcom/oneplus/base/Settings;->m_PrivatePreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    return-wide v2

    .line 318
    :cond_1
    iget-object v2, p0, Lcom/oneplus/base/Settings;->m_PrivateVolatileValues:Ljava/util/Hashtable;

    monitor-enter v2

    .line 320
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/base/Settings;->m_PrivateVolatileValues:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 321
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_2

    .line 322
    check-cast v0, Ljava/lang/Long;

    .end local v0    # "value":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v4

    monitor-exit v2

    return-wide v4

    .line 323
    .restart local v0    # "value":Ljava/lang/Object;
    :cond_2
    :try_start_1
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_3

    .line 324
    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "value":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    int-to-long v4, v1

    monitor-exit v2

    return-wide v4

    .restart local v0    # "value":Ljava/lang/Object;
    :cond_3
    monitor-exit v2

    .line 325
    return-wide p2

    .line 318
    .end local v0    # "value":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/oneplus/base/Settings;->m_Name:Ljava/lang/String;

    return-object v0
.end method

.method public final getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 347
    invoke-virtual {p0, p1}, Lcom/oneplus/base/Settings;->getDefaultValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 348
    .local v1, "obj":Ljava/lang/Object;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 349
    .local v0, "defaultValue":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/oneplus/base/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 361
    invoke-virtual {p0, p1}, Lcom/oneplus/base/Settings;->isPrivateKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 362
    iget-object v1, p0, Lcom/oneplus/base/Settings;->m_GlobalPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 363
    :cond_0
    iget-boolean v1, p0, Lcom/oneplus/base/Settings;->m_IsVolatile:Z

    if-nez v1, :cond_1

    .line 364
    iget-object v1, p0, Lcom/oneplus/base/Settings;->m_PrivatePreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 365
    :cond_1
    iget-object v2, p0, Lcom/oneplus/base/Settings;->m_PrivateVolatileValues:Ljava/util/Hashtable;

    monitor-enter v2

    .line 367
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/base/Settings;->m_PrivateVolatileValues:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 368
    .local v0, "value":Ljava/lang/Object;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p2

    .end local p2    # "defaultValue":Ljava/lang/String;
    :cond_2
    monitor-exit v2

    return-object p2

    .line 365
    .end local v0    # "value":Ljava/lang/Object;
    .restart local p2    # "defaultValue":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 377
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 384
    invoke-super {p0, p1}, Lcom/oneplus/base/HandlerBaseObject;->handleMessage(Landroid/os/Message;)V

    .line 375
    :goto_0
    return-void

    .line 380
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/oneplus/base/Settings;->onValueChanged(Ljava/lang/String;)V

    goto :goto_0

    .line 377
    nop

    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_0
    .end packed-switch
.end method

.method public isPrivateKey(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 397
    if-nez p1, :cond_0

    .line 398
    const/4 v0, 0x0

    return v0

    .line 399
    :cond_0
    sget-object v1, Lcom/oneplus/base/Settings;->PRIVATE_KEYS:Ljava/util/HashSet;

    monitor-enter v1

    .line 401
    :try_start_0
    sget-object v0, Lcom/oneplus/base/Settings;->PRIVATE_KEYS:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 399
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final isVolatile()Z
    .locals 1

    .prologue
    .line 412
    iget-boolean v0, p0, Lcom/oneplus/base/Settings;->m_IsVolatile:Z

    return v0
.end method

.method protected notifyValueChanged(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 419
    invoke-virtual {p0}, Lcom/oneplus/base/Settings;->isDependencyThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 420
    invoke-virtual {p0, p1}, Lcom/oneplus/base/Settings;->onValueChanged(Ljava/lang/String;)V

    .line 417
    :goto_0
    return-void

    .line 422
    :cond_0
    const/16 v0, 0x2710

    invoke-static {p0, v0, v1, v1, p1}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;)Z

    goto :goto_0
.end method

.method protected onRelease()V
    .locals 2

    .prologue
    .line 431
    iget-object v0, p0, Lcom/oneplus/base/Settings;->m_GlobalPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/oneplus/base/Settings;->m_PreferenceChangedListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 432
    iget-object v0, p0, Lcom/oneplus/base/Settings;->m_PrivatePreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/base/Settings;->m_PrivatePreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/oneplus/base/Settings;->m_GlobalPreferences:Landroid/content/SharedPreferences;

    if-eq v0, v1, :cond_0

    .line 433
    iget-object v0, p0, Lcom/oneplus/base/Settings;->m_PrivatePreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/oneplus/base/Settings;->m_PreferenceChangedListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 436
    :cond_0
    invoke-super {p0}, Lcom/oneplus/base/HandlerBaseObject;->onRelease()V

    .line 428
    return-void
.end method

.method protected onValueChanged(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 443
    invoke-static {p1}, Lcom/oneplus/base/SettingsValueChangedEventArgs;->obtain(Ljava/lang/String;)Lcom/oneplus/base/SettingsValueChangedEventArgs;

    move-result-object v0

    .line 444
    .local v0, "e":Lcom/oneplus/base/SettingsValueChangedEventArgs;
    sget-object v1, Lcom/oneplus/base/Settings;->EVENT_VALUE_CHANGED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/base/Settings;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 445
    invoke-virtual {v0}, Lcom/oneplus/base/SettingsValueChangedEventArgs;->recycle()V

    .line 441
    return-void
.end method

.method public final reset(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 455
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/base/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 453
    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 466
    invoke-virtual {p0, p1}, Lcom/oneplus/base/Settings;->isPrivateKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 468
    iget-object v1, p0, Lcom/oneplus/base/Settings;->m_GlobalPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 469
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-direct {p0, v0, p1, p2}, Lcom/oneplus/base/Settings;->set(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Ljava/lang/Object;)V

    .line 470
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 471
    return-void

    .line 473
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    iget-boolean v1, p0, Lcom/oneplus/base/Settings;->m_IsVolatile:Z

    if-nez v1, :cond_1

    .line 475
    iget-object v1, p0, Lcom/oneplus/base/Settings;->m_PrivatePreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 476
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    invoke-direct {p0, v0, p1, p2}, Lcom/oneplus/base/Settings;->set(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Ljava/lang/Object;)V

    .line 477
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 478
    return-void

    .line 480
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    iget-object v2, p0, Lcom/oneplus/base/Settings;->m_PrivateVolatileValues:Ljava/util/Hashtable;

    monitor-enter v2

    .line 482
    :try_start_0
    instance-of v1, p2, Ljava/lang/Boolean;

    if-nez v1, :cond_2

    instance-of v1, p2, Ljava/lang/Integer;

    if-nez v1, :cond_2

    instance-of v1, p2, Ljava/lang/Long;

    if-eqz v1, :cond_4

    .line 483
    :cond_2
    iget-object v1, p0, Lcom/oneplus/base/Settings;->m_PrivateVolatileValues:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    :cond_3
    :goto_0
    invoke-virtual {p0, p1}, Lcom/oneplus/base/Settings;->notifyValueChanged(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 464
    return-void

    .line 484
    :cond_4
    if-eqz p2, :cond_5

    .line 485
    :try_start_1
    iget-object v1, p0, Lcom/oneplus/base/Settings;->m_PrivateVolatileValues:Ljava/util/Hashtable;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 480
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 486
    :cond_5
    :try_start_2
    iget-object v1, p0, Lcom/oneplus/base/Settings;->m_PrivateVolatileValues:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 487
    iget-object v1, p0, Lcom/oneplus/base/Settings;->m_PrivateVolatileValues:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public final setDefaultValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 516
    iget-object v1, p0, Lcom/oneplus/base/Settings;->m_PrivateDefaultValues:Ljava/util/Hashtable;

    monitor-enter v1

    .line 518
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/base/Settings;->m_PrivateDefaultValues:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 514
    return-void

    .line 516
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 541
    iget-object v0, p0, Lcom/oneplus/base/Settings;->m_Name:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 542
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

    .line 543
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
