.class public Lcom/oneplus/camera/media/DefaultVideoResolutionSelector;
.super Lcom/oneplus/camera/media/DefaultResolutionSelector;
.source "DefaultVideoResolutionSelector.java"

# interfaces
.implements Lcom/oneplus/camera/media/VideoResolutionSelector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/media/DefaultVideoResolutionSelector$1;
    }
.end annotation


# static fields
.field public static final SETTINGS_KEY_RESOLUTION_BACK:Ljava/lang/String; = "Resolution.Video.Back"

.field public static final SETTINGS_KEY_RESOLUTION_FRONT:Ljava/lang/String; = "Resolution.Video.Front"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-string v0, "Resolution.Video.Back"

    invoke-static {v0}, Lcom/oneplus/camera/Settings;->addPrivateKey(Ljava/lang/String;)V

    .line 37
    const-string v0, "Resolution.Video.Front"

    invoke-static {v0}, Lcom/oneplus/camera/Settings;->addPrivateKey(Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method protected constructor <init>(Lcom/oneplus/camera/CameraActivity;)V
    .locals 0
    .param p1, "cameraActivity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/oneplus/camera/media/DefaultResolutionSelector;-><init>(Lcom/oneplus/camera/CameraActivity;)V

    .line 48
    return-void
.end method


# virtual methods
.method public getResolutionSettingsKey(Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/Settings;)Ljava/lang/String;
    .locals 4
    .param p1, "camera"    # Lcom/oneplus/camera/Camera;
    .param p2, "settings"    # Lcom/oneplus/camera/Settings;

    .prologue
    .line 177
    const/4 v0, 0x0

    .line 178
    .local v0, "settingsKey":Ljava/lang/String;
    sget-object v2, Lcom/oneplus/camera/media/DefaultVideoResolutionSelector$1;->$SwitchMap$com$oneplus$camera$Camera$LensFacing:[I

    sget-object v1, Lcom/oneplus/camera/Camera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v1}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/Camera$LensFacing;

    invoke-virtual {v1}, Lcom/oneplus/camera/Camera$LensFacing;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 187
    iget-object v1, p0, Lcom/oneplus/camera/media/DefaultVideoResolutionSelector;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getResolutionSettingsKey() - Unknown camera lens facing : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/Camera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v3}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    :goto_0
    return-object v0

    .line 181
    :pswitch_0
    const-string v0, "Resolution.Video.Back"

    .line 182
    goto :goto_0

    .line 184
    :pswitch_1
    const-string v0, "Resolution.Video.Front"

    .line 185
    goto :goto_0

    .line 178
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public saveResolution(Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/Settings;Lcom/oneplus/camera/media/Resolution;)V
    .locals 3
    .param p1, "camera"    # Lcom/oneplus/camera/Camera;
    .param p2, "settings"    # Lcom/oneplus/camera/Settings;
    .param p3, "resolution"    # Lcom/oneplus/camera/media/Resolution;

    .prologue
    .line 55
    sget-object v1, Lcom/oneplus/camera/media/DefaultVideoResolutionSelector$1;->$SwitchMap$com$oneplus$camera$Camera$LensFacing:[I

    sget-object v0, Lcom/oneplus/camera/Camera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v0}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/Camera$LensFacing;

    invoke-virtual {v0}, Lcom/oneplus/camera/Camera$LensFacing;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 64
    iget-object v0, p0, Lcom/oneplus/camera/media/DefaultVideoResolutionSelector;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveResolution() - Unknown camera lens facing : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/Camera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v2}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    :goto_0
    return-void

    .line 58
    :pswitch_0
    const-string v0, "Resolution.Video.Back"

    invoke-virtual {p3}, Lcom/oneplus/camera/media/Resolution;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/oneplus/camera/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 61
    :pswitch_1
    const-string v0, "Resolution.Video.Front"

    invoke-virtual {p3}, Lcom/oneplus/camera/media/Resolution;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/oneplus/camera/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 55
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public selectResolution(Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/Settings;Ljava/util/List;Lcom/oneplus/camera/media/Resolution;Lcom/oneplus/camera/media/ResolutionSelector$Restriction;)Lcom/oneplus/camera/media/Resolution;
    .locals 9
    .param p1, "camera"    # Lcom/oneplus/camera/Camera;
    .param p2, "settings"    # Lcom/oneplus/camera/Settings;
    .param p4, "currentResolution"    # Lcom/oneplus/camera/media/Resolution;
    .param p5, "restriction"    # Lcom/oneplus/camera/media/ResolutionSelector$Restriction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/camera/Camera;",
            "Lcom/oneplus/camera/Settings;",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/camera/media/Resolution;",
            ">;",
            "Lcom/oneplus/camera/media/Resolution;",
            "Lcom/oneplus/camera/media/ResolutionSelector$Restriction;",
            ")",
            "Lcom/oneplus/camera/media/Resolution;"
        }
    .end annotation

    .prologue
    .line 75
    .local p3, "resolutionList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/media/Resolution;>;"
    if-nez p4, :cond_0

    .line 77
    sget-object v7, Lcom/oneplus/camera/media/DefaultVideoResolutionSelector$1;->$SwitchMap$com$oneplus$camera$Camera$LensFacing:[I

    sget-object v6, Lcom/oneplus/camera/Camera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v6}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oneplus/camera/Camera$LensFacing;

    invoke-virtual {v6}, Lcom/oneplus/camera/Camera$LensFacing;->ordinal()I

    move-result v6

    aget v6, v7, v6

    packed-switch v6, :pswitch_data_0

    .line 86
    iget-object v6, p0, Lcom/oneplus/camera/media/DefaultVideoResolutionSelector;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "selectResolution() - Unknown camera lens facing : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/oneplus/camera/Camera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v8}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :cond_0
    :goto_0
    if-eqz p4, :cond_2

    .line 94
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v0, v6, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_2

    .line 96
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/camera/media/Resolution;

    .line 97
    .local v3, "resolution":Lcom/oneplus/camera/media/Resolution;
    if-eqz v3, :cond_1

    invoke-virtual {v3, p4}, Lcom/oneplus/camera/media/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 122
    .end local v3    # "resolution":Lcom/oneplus/camera/media/Resolution;
    :goto_2
    return-object v3

    .line 80
    .end local v0    # "i":I
    :pswitch_0
    const-string v6, "Resolution.Video.Back"

    invoke-virtual {p2, v6}, Lcom/oneplus/camera/Settings;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/oneplus/camera/media/Resolution;->fromKey(Ljava/lang/String;)Lcom/oneplus/camera/media/Resolution;

    move-result-object p4

    .line 81
    goto :goto_0

    .line 83
    :pswitch_1
    const-string v6, "Resolution.Video.Front"

    invoke-virtual {p2, v6}, Lcom/oneplus/camera/Settings;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/oneplus/camera/media/Resolution;->fromKey(Ljava/lang/String;)Lcom/oneplus/camera/media/Resolution;

    move-result-object p4

    .line 84
    goto :goto_0

    .line 94
    .restart local v0    # "i":I
    .restart local v3    # "resolution":Lcom/oneplus/camera/media/Resolution;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 103
    .end local v0    # "i":I
    .end local v3    # "resolution":Lcom/oneplus/camera/media/Resolution;
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/camera/media/DefaultVideoResolutionSelector;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v6

    sget-object v7, Lcom/oneplus/camera/CameraActivity;->PROP_SCREEN_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v6, v7}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oneplus/base/ScreenSize;

    invoke-virtual {v6}, Lcom/oneplus/base/ScreenSize;->toSize()Landroid/util/Size;

    move-result-object v5

    .line 104
    .local v5, "screenSize":Landroid/util/Size;
    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v6

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v7

    mul-int v4, v6, v7

    .line 105
    .local v4, "screenPixelCount":I
    const/4 v1, 0x0

    .line 106
    .local v1, "minPixelCountDiff":I
    const/4 p4, 0x0

    .line 107
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v0, v6, -0x1

    .restart local v0    # "i":I
    :goto_3
    if-ltz v0, :cond_5

    .line 109
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/camera/media/Resolution;

    .line 110
    .restart local v3    # "resolution":Lcom/oneplus/camera/media/Resolution;
    invoke-virtual {v3}, Lcom/oneplus/camera/media/Resolution;->getWidth()I

    move-result v6

    invoke-virtual {v3}, Lcom/oneplus/camera/media/Resolution;->getHeight()I

    move-result v7

    mul-int/2addr v6, v7

    sub-int v6, v4, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 111
    .local v2, "pixelDiff":I
    if-eqz p4, :cond_3

    if-ge v2, v1, :cond_4

    .line 113
    :cond_3
    move-object p4, v3

    .line 114
    move v1, v2

    .line 107
    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 117
    .end local v2    # "pixelDiff":I
    .end local v3    # "resolution":Lcom/oneplus/camera/media/Resolution;
    :cond_5
    if-eqz p4, :cond_6

    move-object v3, p4

    .line 118
    goto :goto_2

    .line 121
    :cond_6
    iget-object v6, p0, Lcom/oneplus/camera/media/DefaultVideoResolutionSelector;->TAG:Ljava/lang/String;

    const-string v7, "selectResolution() - Empty resolution list"

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const/4 v3, 0x0

    goto :goto_2

    .line 77
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public selectResolutions(Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/Settings;Lcom/oneplus/camera/media/ResolutionSelector$Restriction;)Ljava/util/List;
    .locals 10
    .param p1, "camera"    # Lcom/oneplus/camera/Camera;
    .param p2, "settings"    # Lcom/oneplus/camera/Settings;
    .param p3, "restriction"    # Lcom/oneplus/camera/media/ResolutionSelector$Restriction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/camera/Camera;",
            "Lcom/oneplus/camera/Settings;",
            "Lcom/oneplus/camera/media/ResolutionSelector$Restriction;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/camera/media/Resolution;",
            ">;"
        }
    .end annotation

    .prologue
    .line 130
    sget-object v8, Lcom/oneplus/camera/Camera;->PROP_VIDEO_SIZES:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v8}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 131
    .local v0, "allSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 132
    .local v5, "resolutions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/camera/media/Resolution;>;"
    const/4 v2, 0x0

    .line 133
    .local v2, "has4K":Z
    const/4 v1, 0x0

    .line 134
    .local v1, "has2K":Z
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v4, v8, -0x1

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_5

    .line 136
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Size;

    .line 137
    .local v6, "size":Landroid/util/Size;
    invoke-static {p3, v6}, Lcom/oneplus/camera/media/ResolutionSelector$Restriction;->match(Lcom/oneplus/camera/media/ResolutionSelector$Restriction;Landroid/util/Size;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 140
    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v7

    .line 141
    .local v7, "width":I
    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v3

    .line 142
    .local v3, "height":I
    if-nez v2, :cond_2

    const/16 v8, 0x1000

    if-eq v7, v8, :cond_0

    const/16 v8, 0xf00

    if-ne v7, v8, :cond_2

    :cond_0
    const/16 v8, 0x870

    if-ne v3, v8, :cond_2

    .line 144
    new-instance v8, Lcom/oneplus/camera/media/Resolution;

    sget-object v9, Lcom/oneplus/camera/media/MediaType;->VIDEO:Lcom/oneplus/camera/media/MediaType;

    invoke-direct {v8, v9, v7, v3}, Lcom/oneplus/camera/media/Resolution;-><init>(Lcom/oneplus/camera/media/MediaType;II)V

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    const/4 v2, 0x1

    .line 134
    .end local v3    # "height":I
    .end local v7    # "width":I
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 150
    .restart local v3    # "height":I
    .restart local v7    # "width":I
    :cond_2
    if-nez v1, :cond_4

    const/16 v8, 0x780

    if-ne v7, v8, :cond_4

    const/16 v8, 0x438

    if-eq v3, v8, :cond_3

    const/16 v8, 0x440

    if-ne v3, v8, :cond_4

    .line 152
    :cond_3
    new-instance v8, Lcom/oneplus/camera/media/Resolution;

    sget-object v9, Lcom/oneplus/camera/media/MediaType;->VIDEO:Lcom/oneplus/camera/media/MediaType;

    invoke-direct {v8, v9, v7, v3}, Lcom/oneplus/camera/media/Resolution;-><init>(Lcom/oneplus/camera/media/MediaType;II)V

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    const/4 v1, 0x1

    .line 154
    goto :goto_1

    .line 158
    :cond_4
    const/16 v8, 0x500

    if-ne v7, v8, :cond_1

    const/16 v8, 0x2d0

    if-ne v3, v8, :cond_1

    .line 161
    new-instance v8, Lcom/oneplus/camera/media/Resolution;

    sget-object v9, Lcom/oneplus/camera/media/MediaType;->VIDEO:Lcom/oneplus/camera/media/MediaType;

    invoke-direct {v8, v9, v7, v3}, Lcom/oneplus/camera/media/Resolution;-><init>(Lcom/oneplus/camera/media/MediaType;II)V

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 165
    .end local v3    # "height":I
    .end local v6    # "size":Landroid/util/Size;
    .end local v7    # "width":I
    :cond_5
    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 166
    invoke-static {v5}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 167
    return-object v5
.end method
