.class public Lcom/oneplus/camera/ui/DynamicShortcutsManager;
.super Lcom/oneplus/camera/UIComponent;
.source "DynamicShortcutsManager.java"


# static fields
.field public static final EXTRA_DISABLED_MESSAGE_RES_ID:Ljava/lang/String; = "DisabledMessageResId"

.field public static final EXTRA_LONG_LABEL_RES_ID:Ljava/lang/String; = "LongLabelResId"

.field public static final EXTRA_SHORT_LABEL_RES_ID:Ljava/lang/String; = "ShortLabelResId"


# instance fields
.field private m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

.field private m_ShortcutInfos:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Lcom/oneplus/camera/ui/DynamicShortcutsManager;Lcom/oneplus/camera/capturemode/CaptureMode;)V
    .locals 0
    .param p1, "captureMode"    # Lcom/oneplus/camera/capturemode/CaptureMode;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/DynamicShortcutsManager;->onCaptureModeAdded(Lcom/oneplus/camera/capturemode/CaptureMode;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/oneplus/camera/ui/DynamicShortcutsManager;Lcom/oneplus/camera/capturemode/CaptureMode;)V
    .locals 0
    .param p1, "captureMode"    # Lcom/oneplus/camera/capturemode/CaptureMode;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/DynamicShortcutsManager;->onCaptureModeRemoved(Lcom/oneplus/camera/capturemode/CaptureMode;)V

    return-void
.end method

.method constructor <init>(Lcom/oneplus/camera/CameraActivity;)V
    .locals 2
    .param p1, "activity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    .line 46
    const-string/jumbo v0, "Dynamic Shortcuts Manager"

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/oneplus/camera/UIComponent;-><init>(Ljava/lang/String;Lcom/oneplus/camera/CameraActivity;Z)V

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/ui/DynamicShortcutsManager;->m_ShortcutInfos:Ljava/util/Map;

    .line 44
    return-void
.end method

.method private addShortcut(Landroid/content/pm/ShortcutInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/content/pm/ShortcutInfo;

    .prologue
    .line 54
    iget-object v3, p0, Lcom/oneplus/camera/ui/DynamicShortcutsManager;->m_ShortcutInfos:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutInfo;

    .line 57
    .local v0, "prev":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/DynamicShortcutsManager;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v3

    const-class v4, Landroid/content/pm/ShortcutManager;

    invoke-virtual {v3, v4}, Lcom/oneplus/camera/CameraActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ShortcutManager;

    .line 58
    .local v2, "shortcutManager":Landroid/content/pm/ShortcutManager;
    const/4 v3, 0x1

    new-array v3, v3, [Landroid/content/pm/ShortcutInfo;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 59
    .local v1, "shortcutList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    if-nez v0, :cond_0

    .line 60
    invoke-virtual {v2, v1}, Landroid/content/pm/ShortcutManager;->addDynamicShortcuts(Ljava/util/List;)Z

    .line 51
    :goto_0
    return-void

    .line 62
    :cond_0
    invoke-virtual {v2, v1}, Landroid/content/pm/ShortcutManager;->updateShortcuts(Ljava/util/List;)Z

    goto :goto_0
.end method

.method private initShortcutInfos()V
    .locals 7

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/DynamicShortcutsManager;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v4

    const-class v5, Landroid/content/pm/ShortcutManager;

    invoke-virtual {v4, v5}, Lcom/oneplus/camera/CameraActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ShortcutManager;

    .line 70
    .local v3, "shortcutManager":Landroid/content/pm/ShortcutManager;
    invoke-virtual {v3}, Landroid/content/pm/ShortcutManager;->getDynamicShortcuts()Ljava/util/List;

    move-result-object v0

    .line 71
    .local v0, "allDynamicShortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "info$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutInfo;

    .line 73
    .local v1, "info":Landroid/content/pm/ShortcutInfo;
    iget-object v4, p0, Lcom/oneplus/camera/ui/DynamicShortcutsManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "initShortcutInfos() - Shortcut: "

    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 74
    iget-object v4, p0, Lcom/oneplus/camera/ui/DynamicShortcutsManager;->m_ShortcutInfos:Ljava/util/Map;

    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 67
    .end local v1    # "info":Landroid/content/pm/ShortcutInfo;
    :cond_0
    return-void
.end method

.method private onCaptureModeAdded(Lcom/oneplus/camera/capturemode/CaptureMode;)V
    .locals 4
    .param p1, "captureMode"    # Lcom/oneplus/camera/capturemode/CaptureMode;

    .prologue
    .line 83
    invoke-interface {p1}, Lcom/oneplus/camera/capturemode/CaptureMode;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    .line 84
    .local v0, "info":Landroid/content/pm/ShortcutInfo;
    if-eqz v0, :cond_0

    .line 86
    iget-object v1, p0, Lcom/oneplus/camera/ui/DynamicShortcutsManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onCaptureModeAdded() - Add shortcut: "

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 87
    invoke-direct {p0, v0}, Lcom/oneplus/camera/ui/DynamicShortcutsManager;->addShortcut(Landroid/content/pm/ShortcutInfo;)V

    .line 80
    :cond_0
    return-void
.end method

.method private onCaptureModeRemoved(Lcom/oneplus/camera/capturemode/CaptureMode;)V
    .locals 4
    .param p1, "captureMode"    # Lcom/oneplus/camera/capturemode/CaptureMode;

    .prologue
    .line 96
    invoke-interface {p1}, Lcom/oneplus/camera/capturemode/CaptureMode;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    .line 97
    .local v0, "info":Landroid/content/pm/ShortcutInfo;
    if-eqz v0, :cond_0

    .line 99
    iget-object v1, p0, Lcom/oneplus/camera/ui/DynamicShortcutsManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onCaptureModeRemoved() - Remove shortcut: "

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 100
    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/oneplus/camera/ui/DynamicShortcutsManager;->removeShortcut(Ljava/lang/String;)V

    .line 93
    :cond_0
    return-void
.end method

.method private removeShortcut(Ljava/lang/String;)V
    .locals 6
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 167
    iget-object v3, p0, Lcom/oneplus/camera/ui/DynamicShortcutsManager;->m_ShortcutInfos:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutInfo;

    .line 168
    .local v0, "remove":Landroid/content/pm/ShortcutInfo;
    if-nez v0, :cond_0

    .line 169
    return-void

    .line 172
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/DynamicShortcutsManager;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v3

    const-class v4, Landroid/content/pm/ShortcutManager;

    invoke-virtual {v3, v4}, Lcom/oneplus/camera/CameraActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ShortcutManager;

    .line 173
    .local v2, "shortcutManager":Landroid/content/pm/ShortcutManager;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 174
    .local v1, "shortcutList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v2, v1}, Landroid/content/pm/ShortcutManager;->removeDynamicShortcuts(Ljava/util/List;)V

    .line 164
    return-void
.end method


# virtual methods
.method protected onInitialize()V
    .locals 9

    .prologue
    .line 110
    invoke-super {p0}, Lcom/oneplus/camera/UIComponent;->onInitialize()V

    .line 113
    const-class v6, Lcom/oneplus/camera/capturemode/CaptureModeManager;

    invoke-virtual {p0, v6}, Lcom/oneplus/camera/ui/DynamicShortcutsManager;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v6

    check-cast v6, Lcom/oneplus/camera/capturemode/CaptureModeManager;

    iput-object v6, p0, Lcom/oneplus/camera/ui/DynamicShortcutsManager;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    .line 116
    invoke-direct {p0}, Lcom/oneplus/camera/ui/DynamicShortcutsManager;->initShortcutInfos()V

    .line 119
    iget-object v6, p0, Lcom/oneplus/camera/ui/DynamicShortcutsManager;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    if-eqz v6, :cond_3

    .line 122
    iget-object v6, p0, Lcom/oneplus/camera/ui/DynamicShortcutsManager;->m_ShortcutInfos:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 125
    .local v5, "removedShortcutIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/oneplus/camera/ui/DynamicShortcutsManager;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    sget-object v7, Lcom/oneplus/camera/capturemode/CaptureModeManager;->PROP_CAPTURE_MODES:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v6, v7}, Lcom/oneplus/camera/capturemode/CaptureModeManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "captureMode$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/capturemode/CaptureMode;

    .line 127
    .local v0, "captureMode":Lcom/oneplus/camera/capturemode/CaptureMode;
    invoke-interface {v0}, Lcom/oneplus/camera/capturemode/CaptureMode;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v2

    .line 128
    .local v2, "info":Landroid/content/pm/ShortcutInfo;
    if-eqz v2, :cond_0

    .line 130
    iget-object v6, p0, Lcom/oneplus/camera/ui/DynamicShortcutsManager;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "onInitialize() - Add shortcut: "

    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 131
    invoke-direct {p0, v2}, Lcom/oneplus/camera/ui/DynamicShortcutsManager;->addShortcut(Landroid/content/pm/ShortcutInfo;)V

    .line 132
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 137
    .end local v0    # "captureMode":Lcom/oneplus/camera/capturemode/CaptureMode;
    .end local v2    # "info":Landroid/content/pm/ShortcutInfo;
    :cond_1
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "removedId$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 138
    .local v3, "removedId":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/oneplus/camera/ui/DynamicShortcutsManager;->removeShortcut(Ljava/lang/String;)V

    goto :goto_1

    .line 141
    .end local v3    # "removedId":Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Lcom/oneplus/camera/ui/DynamicShortcutsManager;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    sget-object v7, Lcom/oneplus/camera/capturemode/CaptureModeManager;->EVENT_CAPTURE_MODE_ADDED:Lcom/oneplus/base/EventKey;

    new-instance v8, Lcom/oneplus/camera/ui/DynamicShortcutsManager$1;

    invoke-direct {v8, p0}, Lcom/oneplus/camera/ui/DynamicShortcutsManager$1;-><init>(Lcom/oneplus/camera/ui/DynamicShortcutsManager;)V

    invoke-interface {v6, v7, v8}, Lcom/oneplus/camera/capturemode/CaptureModeManager;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 149
    iget-object v6, p0, Lcom/oneplus/camera/ui/DynamicShortcutsManager;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    sget-object v7, Lcom/oneplus/camera/capturemode/CaptureModeManager;->EVENT_CAPTURE_MODE_REMOVED:Lcom/oneplus/base/EventKey;

    new-instance v8, Lcom/oneplus/camera/ui/DynamicShortcutsManager$2;

    invoke-direct {v8, p0}, Lcom/oneplus/camera/ui/DynamicShortcutsManager$2;-><init>(Lcom/oneplus/camera/ui/DynamicShortcutsManager;)V

    invoke-interface {v6, v7, v8}, Lcom/oneplus/camera/capturemode/CaptureModeManager;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 107
    .end local v1    # "captureMode$iterator":Ljava/util/Iterator;
    .end local v4    # "removedId$iterator":Ljava/util/Iterator;
    .end local v5    # "removedShortcutIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_2
    return-void

    .line 159
    :cond_3
    iget-object v6, p0, Lcom/oneplus/camera/ui/DynamicShortcutsManager;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "onInitialize() - Cannot find capture mode manager"

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method
