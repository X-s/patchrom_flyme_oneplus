.class public Lcom/oneplus/camera/SettingsValueChangedEventArgs;
.super Lcom/oneplus/base/EventArgs;
.source "SettingsValueChangedEventArgs.java"


# static fields
.field private static final POOL:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/oneplus/camera/SettingsValueChangedEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field private static final POOL_SIZE:I = 0x8


# instance fields
.field private volatile m_Key:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    new-instance v0, Ljava/util/ArrayDeque;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    sput-object v0, Lcom/oneplus/camera/SettingsValueChangedEventArgs;->POOL:Ljava/util/Queue;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/oneplus/base/EventArgs;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/oneplus/camera/SettingsValueChangedEventArgs;->m_Key:Ljava/lang/String;

    .line 29
    return-void
.end method

.method static declared-synchronized obtain(Ljava/lang/String;)Lcom/oneplus/camera/SettingsValueChangedEventArgs;
    .locals 3
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 49
    const-class v2, Lcom/oneplus/camera/SettingsValueChangedEventArgs;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/oneplus/camera/SettingsValueChangedEventArgs;->POOL:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/SettingsValueChangedEventArgs;

    .line 50
    .local v0, "e":Lcom/oneplus/camera/SettingsValueChangedEventArgs;
    if-eqz v0, :cond_0

    .line 51
    iput-object p0, v0, Lcom/oneplus/camera/SettingsValueChangedEventArgs;->m_Key:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    :goto_0
    monitor-exit v2

    return-object v0

    .line 53
    :cond_0
    :try_start_1
    new-instance v0, Lcom/oneplus/camera/SettingsValueChangedEventArgs;

    .end local v0    # "e":Lcom/oneplus/camera/SettingsValueChangedEventArgs;
    invoke-direct {v0, p0}, Lcom/oneplus/camera/SettingsValueChangedEventArgs;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v0    # "e":Lcom/oneplus/camera/SettingsValueChangedEventArgs;
    goto :goto_0

    .line 49
    .end local v0    # "e":Lcom/oneplus/camera/SettingsValueChangedEventArgs;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method public final getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/oneplus/camera/SettingsValueChangedEventArgs;->m_Key:Ljava/lang/String;

    return-object v0
.end method

.method final recycle()V
    .locals 3

    .prologue
    .line 63
    const-class v1, Lcom/oneplus/camera/SettingsValueChangedEventArgs;

    monitor-enter v1

    .line 65
    :try_start_0
    sget-object v0, Lcom/oneplus/camera/SettingsValueChangedEventArgs;->POOL:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    const/16 v2, 0x8

    if-ge v0, v2, :cond_0

    .line 66
    sget-object v0, Lcom/oneplus/camera/SettingsValueChangedEventArgs;->POOL:Ljava/util/Queue;

    invoke-interface {v0, p0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 67
    :cond_0
    monitor-exit v1

    .line 68
    return-void

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
