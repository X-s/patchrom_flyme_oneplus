.class Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;
.super Ljava/lang/Object;
.source "DeviceKeyHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/DeviceKeyHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionInfo"
.end annotation


# instance fields
.field mActionName:Ljava/lang/String;

.field mPackageName:Ljava/lang/String;

.field mShortcutId:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/policy/DeviceKeyHandler;


# direct methods
.method private constructor <init>(Lcom/android/server/policy/DeviceKeyHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/DeviceKeyHandler;

    .prologue
    .line 319
    iput-object p1, p0, Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;->this$0:Lcom/android/server/policy/DeviceKeyHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/policy/DeviceKeyHandler;Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/DeviceKeyHandler;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;-><init>(Lcom/android/server/policy/DeviceKeyHandler;)V

    return-void
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;->mActionName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getShortcutId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;->mShortcutId:Ljava/lang/String;

    return-object v0
.end method

.method public setActionName(Ljava/lang/String;)V
    .locals 0
    .param p1, "actionName"    # Ljava/lang/String;

    .prologue
    .line 325
    iput-object p1, p0, Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;->mActionName:Ljava/lang/String;

    .line 324
    return-void
.end method

.method public setPackage(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 329
    iput-object p1, p0, Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;->mPackageName:Ljava/lang/String;

    .line 328
    return-void
.end method

.method public setShortcutId(Ljava/lang/String;)V
    .locals 0
    .param p1, "shortcutId"    # Ljava/lang/String;

    .prologue
    .line 333
    iput-object p1, p0, Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;->mShortcutId:Ljava/lang/String;

    .line 332
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;->mActionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " Package:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ShortcutId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;->mShortcutId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
