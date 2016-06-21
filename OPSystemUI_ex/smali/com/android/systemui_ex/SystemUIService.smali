.class public Lcom/android/systemui_ex/SystemUIService;
.super Landroid/app/Service;
.source "SystemUIService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 9
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/android/systemui_ex/SystemUIService;->getApplication()Landroid/app/Application;

    move-result-object v7

    check-cast v7, Lcom/android/systemui_ex/SystemUIApplication;

    invoke-virtual {v7}, Lcom/android/systemui_ex/SystemUIApplication;->getServices()[Lcom/android/systemui_ex/SystemUI;

    move-result-object v4

    .line 42
    .local v4, "services":[Lcom/android/systemui_ex/SystemUI;
    if-eqz p3, :cond_0

    array-length v7, p3

    if-nez v7, :cond_1

    .line 43
    :cond_0
    move-object v0, v4

    .local v0, "arr$":[Lcom/android/systemui_ex/SystemUI;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_3

    aget-object v6, v0, v1

    .line 44
    .local v6, "ui":Lcom/android/systemui_ex/SystemUI;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dumping service: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v6, p1, p2, p3}, Lcom/android/systemui_ex/SystemUI;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 43
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 48
    .end local v0    # "arr$":[Lcom/android/systemui_ex/SystemUI;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v6    # "ui":Lcom/android/systemui_ex/SystemUI;
    :cond_1
    const/4 v7, 0x0

    aget-object v5, p3, v7

    .line 49
    .local v5, "svc":Ljava/lang/String;
    move-object v0, v4

    .restart local v0    # "arr$":[Lcom/android/systemui_ex/SystemUI;
    array-length v2, v0

    .restart local v2    # "len$":I
    const/4 v1, 0x0

    .restart local v1    # "i$":I
    :goto_1
    if-ge v1, v2, :cond_3

    aget-object v6, v0, v1

    .line 50
    .restart local v6    # "ui":Lcom/android/systemui_ex/SystemUI;
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 51
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 52
    invoke-virtual {v6, p1, p2, p3}, Lcom/android/systemui_ex/SystemUI;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 49
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 56
    .end local v3    # "name":Ljava/lang/String;
    .end local v5    # "svc":Ljava/lang/String;
    .end local v6    # "ui":Lcom/android/systemui_ex/SystemUI;
    :cond_3
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 36
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 30
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 31
    invoke-virtual {p0}, Lcom/android/systemui_ex/SystemUIService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/systemui_ex/SystemUIApplication;

    invoke-virtual {v0}, Lcom/android/systemui_ex/SystemUIApplication;->startServicesIfNeeded()V

    .line 32
    return-void
.end method
