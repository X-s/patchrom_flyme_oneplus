.class final Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Observer;
.super Landroid/database/ContentObserver;
.source "OPSeekBarVolumizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/notification/OPSeekBarVolumizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Observer"
.end annotation


# instance fields
.field private final ZEN_TREE_KEY_URI:Landroid/net/Uri;

.field private final ZEN_VOLUME_SETTINGS_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;


# direct methods
.method public constructor <init>(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;Landroid/os/Handler;)V
    .locals 2
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 404
    iput-object p1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Observer;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    .line 405
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 399
    sget-object v0, Landroid/provider/Settings$System;->VOLUME_SETTINGS:[Ljava/lang/String;

    iget-object v1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Observer;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    # getter for: Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mStreamType:I
    invoke-static {v1}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$800(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)I

    move-result v1

    aget-object v0, v0, v1

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Observer;->ZEN_VOLUME_SETTINGS_URI:Landroid/net/Uri;

    .line 401
    const-string v0, "oem_three_key_define"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Observer;->ZEN_TREE_KEY_URI:Landroid/net/Uri;

    .line 406
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 422
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 423
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Observer;->ZEN_TREE_KEY_URI:Landroid/net/Uri;

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Observer;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    # invokes: Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->updateZenMute()V
    invoke-static {v0}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1100(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)V

    .line 429
    :goto_0
    return-void

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Observer;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    # invokes: Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->updateSlider()V
    invoke-static {v0}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1200(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)V

    goto :goto_0
.end method

.method public register(Z)V
    .locals 3
    .param p1, "register"    # Z

    .prologue
    .line 409
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Observer;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    # getter for: Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$900(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 410
    .local v0, "cr":Landroid/content/ContentResolver;
    if-eqz p1, :cond_1

    .line 411
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Observer;->ZEN_VOLUME_SETTINGS_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 412
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Observer;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    # getter for: Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mNotificationOrRing:Z
    invoke-static {v1}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1000(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 418
    :cond_0
    :goto_0
    return-void

    .line 416
    :cond_1
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0
.end method
