.class public Lcom/oneplus/camera/receiver/LocaleChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LocaleChangedReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/oneplus/camera/receiver/LocaleChangedReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/camera/receiver/LocaleChangedReceiver;->TAG:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 28
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x18

    if-le v13, v14, :cond_6

    .line 30
    const-class v13, Landroid/content/pm/ShortcutManager;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ShortcutManager;

    .line 31
    .local v11, "shortcutManager":Landroid/content/pm/ShortcutManager;
    if-nez v11, :cond_0

    .line 32
    return-void

    .line 33
    :cond_0
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .local v12, "updateShortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    invoke-virtual {v11}, Landroid/content/pm/ShortcutManager;->getDynamicShortcuts()Ljava/util/List;

    move-result-object v10

    .line 35
    .local v10, "shortcutList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "info$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ShortcutInfo;

    .line 38
    .local v6, "info":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v6}, Landroid/content/pm/ShortcutInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v2

    .line 39
    .local v2, "bundle":Landroid/os/PersistableBundle;
    const-string/jumbo v13, "LongLabelResId"

    const/4 v14, 0x0

    invoke-virtual {v2, v13, v14}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 40
    .local v8, "longLabelResId":I
    const-string/jumbo v13, "ShortLabelResId"

    const/4 v14, 0x0

    invoke-virtual {v2, v13, v14}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 41
    .local v9, "shortLabelResId":I
    const-string/jumbo v13, "DisabledMessageResId"

    const/4 v14, 0x0

    invoke-virtual {v2, v13, v14}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 44
    .local v3, "disabledMessageResId":I
    new-instance v1, Landroid/content/pm/ShortcutInfo$Builder;

    invoke-virtual {v6}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-direct {v1, v0, v13}, Landroid/content/pm/ShortcutInfo$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 45
    .local v1, "builder":Landroid/content/pm/ShortcutInfo$Builder;
    const/4 v5, 0x0

    .line 46
    .local v5, "hasChange":Z
    if-lez v8, :cond_2

    .line 50
    :try_start_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Landroid/content/pm/ShortcutInfo$Builder;->setLongLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    const/4 v5, 0x1

    .line 58
    :cond_2
    :goto_1
    if-lez v9, :cond_3

    .line 62
    :try_start_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Landroid/content/pm/ShortcutInfo$Builder;->setShortLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 63
    const/4 v5, 0x1

    .line 70
    :cond_3
    :goto_2
    if-lez v3, :cond_4

    .line 74
    :try_start_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Landroid/content/pm/ShortcutInfo$Builder;->setDisabledMessage(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 75
    const/4 v5, 0x1

    .line 84
    :cond_4
    :goto_3
    if-eqz v5, :cond_1

    .line 86
    sget-object v13, Lcom/oneplus/camera/receiver/LocaleChangedReceiver;->TAG:Ljava/lang/String;

    const-string/jumbo v14, "onReceive() - Update dynamic shortcut: "

    invoke-virtual {v6}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v14, v15}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 87
    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo$Builder;->build()Landroid/content/pm/ShortcutInfo;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 54
    :catch_0
    move-exception v4

    .line 55
    .local v4, "e":Ljava/lang/Throwable;
    sget-object v13, Lcom/oneplus/camera/receiver/LocaleChangedReceiver;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "onReceive() - longLabelResId: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ",e:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 66
    .end local v4    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v4

    .line 67
    .restart local v4    # "e":Ljava/lang/Throwable;
    sget-object v13, Lcom/oneplus/camera/receiver/LocaleChangedReceiver;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "onReceive() - shortLabelResId: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ",e:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 78
    .end local v4    # "e":Ljava/lang/Throwable;
    :catch_2
    move-exception v4

    .line 79
    .restart local v4    # "e":Ljava/lang/Throwable;
    sget-object v13, Lcom/oneplus/camera/receiver/LocaleChangedReceiver;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "onReceive() - disabledMessageResId: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ",e:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 92
    .end local v1    # "builder":Landroid/content/pm/ShortcutInfo$Builder;
    .end local v2    # "bundle":Landroid/os/PersistableBundle;
    .end local v3    # "disabledMessageResId":I
    .end local v4    # "e":Ljava/lang/Throwable;
    .end local v5    # "hasChange":Z
    .end local v6    # "info":Landroid/content/pm/ShortcutInfo;
    .end local v8    # "longLabelResId":I
    .end local v9    # "shortLabelResId":I
    :cond_5
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_6

    .line 93
    invoke-virtual {v11, v12}, Landroid/content/pm/ShortcutManager;->updateShortcuts(Ljava/util/List;)Z

    .line 25
    .end local v7    # "info$iterator":Ljava/util/Iterator;
    .end local v10    # "shortcutList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    .end local v11    # "shortcutManager":Landroid/content/pm/ShortcutManager;
    .end local v12    # "updateShortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    :cond_6
    return-void
.end method
