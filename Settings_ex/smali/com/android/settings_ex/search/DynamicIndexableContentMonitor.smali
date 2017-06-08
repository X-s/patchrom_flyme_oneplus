.class public final Lcom/android/settings_ex/search/DynamicIndexableContentMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "DynamicIndexableContentMonitor.java"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/search/DynamicIndexableContentMonitor$UserDictionaryContentObserver;
    }
.end annotation


# static fields
.field private static final DELAY_PROCESS_PACKAGE_CHANGE:J = 0x7d0L

.field private static final MSG_PACKAGE_AVAILABLE:I = 0x1

.field private static final MSG_PACKAGE_UNAVAILABLE:I = 0x2


# instance fields
.field private final mAccessibilityServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mHasFeatureIme:Z

.field private mHasFeaturePrinting:Z

.field private final mImeServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPrintServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserDictionaryContentObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/search/DynamicIndexableContentMonitor;->mAccessibilityServices:Ljava/util/List;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/search/DynamicIndexableContentMonitor;->mPrintServices:Ljava/util/List;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/search/DynamicIndexableContentMonitor;->mImeServices:Ljava/util/List;

    .line 60
    new-instance v0, Lcom/android/settings_ex/search/DynamicIndexableContentMonitor$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/search/DynamicIndexableContentMonitor$1;-><init>(Lcom/android/settings_ex/search/DynamicIndexableContentMonitor;)V

    iput-object v0, p0, Lcom/android/settings_ex/search/DynamicIndexableContentMonitor;->mHandler:Landroid/os/Handler;

    .line 77
    new-instance v0, Lcom/android/settings_ex/search/DynamicIndexableContentMonitor$UserDictionaryContentObserver;

    iget-object v1, p0, Lcom/android/settings_ex/search/DynamicIndexableContentMonitor;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/search/DynamicIndexableContentMonitor$UserDictionaryContentObserver;-><init>(Lcom/android/settings_ex/search/DynamicIndexableContentMonitor;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings_ex/search/DynamicIndexableContentMonitor;->mUserDictionaryContentObserver:Landroid/database/ContentObserver;

    .line 296
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/search/DynamicIndexableContentMonitor;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/search/DynamicIndexableContentMonitor;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/settings_ex/search/DynamicIndexableContentMonitor;->handlePackageAvailable(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/search/DynamicIndexableContentMonitor;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/search/DynamicIndexableContentMonitor;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/settings_ex/search/DynamicIndexableContentMonitor;->handlePackageUnavailable(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings_ex/search/DynamicIndexableContentMonitor;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/search/DynamicIndexableContentMonitor;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/settings_ex/search/DynamicIndexableContentMonitor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private static getAccessibilityServiceIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 85
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.accessibilityservice.AccessibilityService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 86
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    return-object v0
.end method

.method private static getIMEServiceIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 97
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.view.InputMethod"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 98
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    return-object v0
.end method

.method private static getPrintServiceIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 91
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.printservice.PrintService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 92
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    return-object v0
.end method

.method private handlePackageAvailable(Ljava/lang/String;)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 234
    iget-object v2, p0, Lcom/android/settings_ex/search/DynamicIndexableContentMonitor;->mAccessibilityServices:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 235
    invoke-static {p1}, Lcom/android/settings_ex/search/DynamicIndexableContentMonitor;->getAccessibilityServiceIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 236
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/settings_ex/search/DynamicIndexableContentMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0, v4}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 237
    .local v1, "services":Ljava/util/List;, "Ljava/util/List<*>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 238
    iget-object v2, p0, Lcom/android/settings_ex/search/DynamicIndexableContentMonitor;->mAccessibilityServices:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    iget-object v2, p0, Lcom/android/settings_ex/search/DynamicIndexableContentMonitor;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings_ex/search/Index;->getInstance(Landroid/content/Context;)Lcom/android/settings_ex/search/Index;

    move-result-object v2

    const-class v3, Lcom/android/settings_ex/accessibility/AccessibilitySettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/settings_ex/search/Index;->updateFromClassNameResource(Ljava/lang/String;ZZ)V

    .line 244
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "services":Ljava/util/List;, "Ljava/util/List<*>;"
    :cond_0
    iget-boolean v2, p0, Lcom/android/settings_ex/search/DynamicIndexableContentMonitor;->mHasFeaturePrinting:Z

    if-eqz v2, :cond_1

    .line 245
    iget-object v2, p0, Lcom/android/settings_ex/search/DynamicIndexableContentMonitor;->mPrintServices:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 246
    invoke-static {p1}, Lcom/android/settings_ex/search/DynamicIndexableContentMonitor;->getPrintServiceIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 247
    .restart local v0    # "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/settings_ex/search/DynamicIndexableContentMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0, v4}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 248
    .restart local v1    # "services":Ljava/util/List;, "Ljava/util/List<*>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 249
    iget-object v2, p0, Lcom/android/settings_ex/search/DynamicIndexableContentMonitor;->mPrintServices:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    iget-object v2, p0, Lcom/android/settings_ex/search/DynamicIndexableContentMonitor;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings_ex/search/Index;->getInstance(Landroid/content/Context;)Lcom/android/settings_ex/search/Index;

    move-result-object v2

    const-class v3, Lcom/android/settings_ex/print/PrintSettingsFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/settings_ex/search/Index;->updateFromClassNameResource(Ljava/lang/String;ZZ)V

    .line 256
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "services":Ljava/util/List;, "Ljava/util/List<*>;"
    :cond_1
    iget-boolean v2, p0, Lcom/android/settings_ex/search/DynamicIndexableContentMonitor;->mHasFeatureIme:Z

    if-eqz v2, :cond_2

    .line 257
    iget-object v2, p0, Lcom/android/settings_ex/search/DynamicIndexableContentMonitor;->mImeServices:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 258
    invoke-static {p1}, Lcom/android/settings_ex/search/DynamicIndexableContentMonitor;->getIMEServiceIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 259
    .restart local v0    # "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/settings_ex/search/DynamicIndexableContentMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0, v4}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 260
    .restart local v1    # "services":Ljava/util/List;, "Ljava/util/List<*>;"
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 261
    iget-object v2, p0, Lcom/android/settings_ex/search/DynamicIndexableContentMonitor;->mImeServices:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    iget-object v2, p0, Lcom/android/settings_ex/search/DynamicIndexableContentMonitor;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings_ex/search/Index;->getInstance(Landroid/content/Context;)Lcom/android/settings_ex/search/Index;

    move-result-object v2

    const-class v3, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/settings_ex/search/Index;->updateFromClassNameResource(Ljava/lang/String;ZZ)V

    .line 267
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "services":Ljava/util/List;, "Ljava/util/List<*>;"
    :cond_2
    return-void
.end method

.method private handlePackageUnavailable(Ljava/lang/String;)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 270
    iget-object v3, p0, Lcom/android/settings_ex/search/DynamicIndexableContentMonitor;->mAccessibilityServices:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 271
    .local v0, "accessibilityIndex":I
    if-ltz v0, :cond_0

    .line 272
    iget-object v3, p0, Lcom/android/settings_ex/search/DynamicIndexableContentMonitor;->mAccessibilityServices:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 273
    iget-object v3, p0, Lcom/android/settings_ex/search/DynamicIndexableContentMonitor;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings_ex/search/Index;->getInstance(Landroid/content/Context;)Lcom/android/settings_ex/search/Index;

    move-result-object v3

    const-class v4, Lcom/android/settings_ex/accessibility/AccessibilitySettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v5, v5}, Lcom/android/settings_ex/search/Index;->updateFromClassNameResource(Ljava/lang/String;ZZ)V

    .line 277
    :cond_0
    iget-boolean v3, p0, Lcom/android/settings_ex/search/DynamicIndexableContentMonitor;->mHasFeaturePrinting:Z

    if-eqz v3, :cond_1

    .line 278
    iget-object v3, p0, Lcom/android/settings_ex/search/DynamicIndexableContentMonitor;->mPrintServices:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 279
    .local v2, "printIndex":I
    if-ltz v2, :cond_1

    .line 280
    iget-object v3, p0, Lcom/android/settings_ex/search/DynamicIndexableContentMonitor;->mPrintServices:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 281
    iget-object v3, p0, Lcom/android/settings_ex/search/DynamicIndexableContentMonitor;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings_ex/search/Index;->getInstance(Landroid/content/Context;)Lcom/android/settings_ex/search/Index;

    move-result-object v3

    const-class v4, Lcom/android/settings_ex/print/PrintSettingsFragment;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v5, v5}, Lcom/android/settings_ex/search/Index;->updateFromClassNameResource(Ljava/lang/String;ZZ)V

    .line 286
    .end local v2    # "printIndex":I
    :cond_1
    iget-boolean v3, p0, Lcom/android/settings_ex/search/DynamicIndexableContentMonitor;->mHasFeatureIme:Z

    if-eqz v3, :cond_2

    .line 287
    iget-object v3, p0, Lcom/android/settings_ex/search/DynamicIndexableContentMonitor;->mImeServices:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 288
    .local v1, "imeIndex":I
    if-ltz v1, :cond_2

    .line 289
    iget-object v3, p0, Lcom/android/settings_ex/search/DynamicIndexableContentMonitor;->mImeServices:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 290
    iget-object v3, p0, Lcom/android/settings_ex/search/DynamicIndexableContentMonitor;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings_ex/search/Index;->getInstance(Landroid/content/Context;)Lcom/android/settings_ex/search/Index;

    move-result-object v3

    const-class v4, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v5, v5}, Lcom/android/settings_ex/search/Index;->updateFromClassNameResource(Ljava/lang/String;ZZ)V

    .line 294
    .end local v1    # "imeIndex":I
    :cond_2
    return-void
.end method

.method private postMessage(ILjava/lang/String;)V
    .locals 4
    .param p1, "what"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 229
    iget-object v1, p0, Lcom/android/settings_ex/search/DynamicIndexableContentMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 230
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/settings_ex/search/DynamicIndexableContentMonitor;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 231
    return-void
.end method


# virtual methods
.method public onInputDeviceAdded(I)V
    .locals 4
    .param p1, "deviceId"    # I

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/settings_ex/search/DynamicIndexableContentMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings_ex/search/Index;->getInstance(Landroid/content/Context;)Lcom/android/settings_ex/search/Index;

    move-result-object v0

    const-class v1, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings_ex/search/Index;->updateFromClassNameResource(Ljava/lang/String;ZZ)V

    .line 215
    return-void
.end method

.method public onInputDeviceChanged(I)V
    .locals 3
    .param p1, "deviceId"    # I

    .prologue
    const/4 v2, 0x1

    .line 224
    iget-object v0, p0, Lcom/android/settings_ex/search/DynamicIndexableContentMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings_ex/search/Index;->getInstance(Landroid/content/Context;)Lcom/android/settings_ex/search/Index;

    move-result-object v0

    const-class v1, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/settings_ex/search/Index;->updateFromClassNameResource(Ljava/lang/String;ZZ)V

    .line 226
    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .locals 0
    .param p1, "deviceId"    # I

    .prologue
    .line 219
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/search/DynamicIndexableContentMonitor;->onInputDeviceChanged(I)V

    .line 220
    return-void
.end method

.method public onPackageAppeared(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 188
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/settings_ex/search/DynamicIndexableContentMonitor;->postMessage(ILjava/lang/String;)V

    .line 189
    return-void
.end method

.method public onPackageDisappeared(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 194
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/android/settings_ex/search/DynamicIndexableContentMonitor;->postMessage(ILjava/lang/String;)V

    .line 195
    return-void
.end method

.method public onPackageModified(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 200
    invoke-super {p0, p1}, Lcom/android/internal/content/PackageMonitor;->onPackageModified(Ljava/lang/String;)V

    .line 201
    iget-object v1, p0, Lcom/android/settings_ex/search/DynamicIndexableContentMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v0

    .line 203
    .local v0, "state":I
    if-eqz v0, :cond_0

    if-ne v0, v2, :cond_1

    .line 205
    :cond_0
    invoke-direct {p0, v2, p1}, Lcom/android/settings_ex/search/DynamicIndexableContentMonitor;->postMessage(ILjava/lang/String;)V

    .line 209
    :goto_0
    return-void

    .line 207
    :cond_1
    const/4 v1, 0x2

    invoke-direct {p0, v1, p1}, Lcom/android/settings_ex/search/DynamicIndexableContentMonitor;->postMessage(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public register(Landroid/content/Context;)V
    .locals 25
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 103
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/search/DynamicIndexableContentMonitor;->mContext:Landroid/content/Context;

    .line 105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/search/DynamicIndexableContentMonitor;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v21

    const-string v22, "android.software.print"

    invoke-virtual/range {v21 .. v22}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings_ex/search/DynamicIndexableContentMonitor;->mHasFeaturePrinting:Z

    .line 107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/search/DynamicIndexableContentMonitor;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v21

    const-string v22, "android.software.input_methods"

    invoke-virtual/range {v21 .. v22}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings_ex/search/DynamicIndexableContentMonitor;->mHasFeatureIme:Z

    .line 111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/search/DynamicIndexableContentMonitor;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const-string v22, "accessibility"

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/accessibility/AccessibilityManager;

    .line 113
    .local v5, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v8

    .line 115
    .local v8, "accessibilityServices":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v7

    .line 116
    .local v7, "accessibilityServiceCount":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v7, :cond_2

    .line 117
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 118
    .local v6, "accessibilityService":Landroid/accessibilityservice/AccessibilityServiceInfo;
    invoke-virtual {v6}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v18

    .line 119
    .local v18, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v18, :cond_0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v21, v0

    if-nez v21, :cond_1

    .line 116
    :cond_0
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 122
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/search/DynamicIndexableContentMonitor;->mAccessibilityServices:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-interface/range {v21 .. v22}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 125
    .end local v6    # "accessibilityService":Landroid/accessibilityservice/AccessibilityServiceInfo;
    .end local v18    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/search/DynamicIndexableContentMonitor;->mHasFeaturePrinting:Z

    move/from16 v21, v0

    if-eqz v21, :cond_5

    .line 127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/search/DynamicIndexableContentMonitor;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const-string v22, "print"

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/print/PrintManager;

    .line 129
    .local v15, "printManager":Landroid/print/PrintManager;
    invoke-virtual {v15}, Landroid/print/PrintManager;->getInstalledPrintServices()Ljava/util/List;

    move-result-object v17

    .line 130
    .local v17, "printServices":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v19

    .line 131
    .local v19, "serviceCount":I
    const/4 v9, 0x0

    :goto_2
    move/from16 v0, v19

    if-ge v9, v0, :cond_5

    .line 132
    move-object/from16 v0, v17

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/printservice/PrintServiceInfo;

    .line 133
    .local v16, "printService":Landroid/printservice/PrintServiceInfo;
    invoke-virtual/range {v16 .. v16}, Landroid/printservice/PrintServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v18

    .line 134
    .restart local v18    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v18, :cond_3

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v21, v0

    if-nez v21, :cond_4

    .line 131
    :cond_3
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 137
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/search/DynamicIndexableContentMonitor;->mPrintServices:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-interface/range {v21 .. v22}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 142
    .end local v15    # "printManager":Landroid/print/PrintManager;
    .end local v16    # "printService":Landroid/printservice/PrintServiceInfo;
    .end local v17    # "printServices":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    .end local v18    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v19    # "serviceCount":I
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/search/DynamicIndexableContentMonitor;->mHasFeatureIme:Z

    move/from16 v21, v0

    if-eqz v21, :cond_8

    .line 143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/search/DynamicIndexableContentMonitor;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const-string v22, "input_method"

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/inputmethod/InputMethodManager;

    .line 145
    .local v10, "imeManager":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object v14

    .line 146
    .local v14, "inputMethods":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v13

    .line 147
    .local v13, "inputMethodCount":I
    const/4 v9, 0x0

    :goto_4
    if-ge v9, v13, :cond_7

    .line 148
    invoke-interface {v14, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/inputmethod/InputMethodInfo;

    .line 149
    .local v12, "inputMethod":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v12}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v20

    .line 150
    .local v20, "serviceInfo":Landroid/content/pm/ServiceInfo;
    if-nez v20, :cond_6

    .line 147
    :goto_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 151
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/search/DynamicIndexableContentMonitor;->mImeServices:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-interface/range {v21 .. v22}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 155
    .end local v12    # "inputMethod":Landroid/view/inputmethod/InputMethodInfo;
    .end local v20    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/search/DynamicIndexableContentMonitor;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    sget-object v22, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    const/16 v23, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/search/DynamicIndexableContentMonitor;->mUserDictionaryContentObserver:Landroid/database/ContentObserver;

    move-object/from16 v24, v0

    invoke-virtual/range {v21 .. v24}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 160
    .end local v10    # "imeManager":Landroid/view/inputmethod/InputMethodManager;
    .end local v13    # "inputMethodCount":I
    .end local v14    # "inputMethods":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    :cond_8
    const-string v21, "input"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/hardware/input/InputManager;

    .line 162
    .local v11, "inputManager":Landroid/hardware/input/InputManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/search/DynamicIndexableContentMonitor;->mHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    .line 165
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v21

    sget-object v22, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settings_ex/search/DynamicIndexableContentMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 166
    return-void
.end method

.method public unregister()V
    .locals 3

    .prologue
    .line 169
    invoke-super {p0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 171
    iget-object v1, p0, Lcom/android/settings_ex/search/DynamicIndexableContentMonitor;->mContext:Landroid/content/Context;

    const-string v2, "input"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    .line 173
    .local v0, "inputManager":Landroid/hardware/input/InputManager;
    invoke-virtual {v0, p0}, Landroid/hardware/input/InputManager;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V

    .line 175
    iget-boolean v1, p0, Lcom/android/settings_ex/search/DynamicIndexableContentMonitor;->mHasFeatureIme:Z

    if-eqz v1, :cond_0

    .line 176
    iget-object v1, p0, Lcom/android/settings_ex/search/DynamicIndexableContentMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/search/DynamicIndexableContentMonitor;->mUserDictionaryContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 180
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/search/DynamicIndexableContentMonitor;->mAccessibilityServices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 181
    iget-object v1, p0, Lcom/android/settings_ex/search/DynamicIndexableContentMonitor;->mPrintServices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 182
    iget-object v1, p0, Lcom/android/settings_ex/search/DynamicIndexableContentMonitor;->mImeServices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 183
    return-void
.end method
