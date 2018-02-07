.class Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$2;
.super Ljava/lang/Object;
.source "PrivateVolumeSettings.java"

# interfaces
.implements Lcom/oneplus/settings/storage/OPMediaProvider$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;

    .prologue
    .line 646
    iput-object p1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$2;->this$0:Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public loaded(Lcom/oneplus/settings/storage/OPMediaProvider$FileType;J)V
    .locals 2
    .param p1, "type"    # Lcom/oneplus/settings/storage/OPMediaProvider$FileType;
    .param p2, "size"    # J

    .prologue
    .line 649
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$2;->this$0:Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;

    invoke-static {v0, p1, p2, p3}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->-wrap1(Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;Lcom/oneplus/settings/storage/OPMediaProvider$FileType;J)V

    .line 648
    return-void
.end method
