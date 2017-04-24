.class public Lorg/codeaurora/camera/ExtendedFace;
.super Landroid/hardware/Camera$Face;
.source "ExtendedFace.java"


# static fields
.field private static final BUNDLE_KEY_BLINK_DETECTED:Ljava/lang/String; = "blinkDetected"

.field private static final BUNDLE_KEY_FACE_PITCH_DEGREE:Ljava/lang/String; = "facePitchDegree"

.field private static final BUNDLE_KEY_FACE_RECOGNIZED:Ljava/lang/String; = "faceRecognized"

.field private static final BUNDLE_KEY_FACE_ROLL_DEGREE:Ljava/lang/String; = "faceRollDegree"

.field private static final BUNDLE_KEY_FACE_YAW_DEGREE:Ljava/lang/String; = "faceYawDegree"

.field private static final BUNDLE_KEY_GAZE_LEFT_RIGHT_DEGREE:Ljava/lang/String; = "gazeLeftRightDegree"

.field private static final BUNDLE_KEY_GAZE_UP_DOWN_DEGREE:Ljava/lang/String; = "gazeUpDownDegree"

.field private static final BUNDLE_KEY_IS_SMILE:Ljava/lang/String; = "isSmile"

.field private static final BUNDLE_KEY_LEFT_EYE_CLOSED_VALUE:Ljava/lang/String; = "leftEyeClosedValue"

.field private static final BUNDLE_KEY_RIGHT_EYE_CLOSED_VALUE:Ljava/lang/String; = "rightEyeClosedValue"

.field private static final BUNDLE_KEY_SMILE_SCORE:Ljava/lang/String; = "smileScore"

.field private static final BUNDLE_KEY_SMILE_VALUE:Ljava/lang/String; = "smileValue"

.field private static final STR_FALSE:Ljava/lang/String; = "false"

.field private static final STR_TRUE:Ljava/lang/String; = "true"


# instance fields
.field private blinkDetected:I

.field private faceRecognized:I

.field private gazeAngle:I

.field private isSmile:I

.field private leftrightDir:I

.field private leftrightGaze:I

.field private leyeBlink:I

.field private reyeBlink:I

.field private rollDir:I

.field private smileDegree:I

.field private smileScore:I

.field private topbottomGaze:I

.field private updownDir:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0}, Landroid/hardware/Camera$Face;-><init>()V

    .line 55
    iput v0, p0, Lorg/codeaurora/camera/ExtendedFace;->smileDegree:I

    .line 56
    iput v0, p0, Lorg/codeaurora/camera/ExtendedFace;->smileScore:I

    .line 58
    iput v0, p0, Lorg/codeaurora/camera/ExtendedFace;->isSmile:I

    .line 59
    iput v0, p0, Lorg/codeaurora/camera/ExtendedFace;->blinkDetected:I

    .line 60
    iput v0, p0, Lorg/codeaurora/camera/ExtendedFace;->faceRecognized:I

    .line 61
    iput v0, p0, Lorg/codeaurora/camera/ExtendedFace;->gazeAngle:I

    .line 62
    iput v0, p0, Lorg/codeaurora/camera/ExtendedFace;->updownDir:I

    .line 63
    iput v0, p0, Lorg/codeaurora/camera/ExtendedFace;->leftrightDir:I

    .line 64
    iput v0, p0, Lorg/codeaurora/camera/ExtendedFace;->rollDir:I

    .line 65
    iput v0, p0, Lorg/codeaurora/camera/ExtendedFace;->leyeBlink:I

    .line 66
    iput v0, p0, Lorg/codeaurora/camera/ExtendedFace;->reyeBlink:I

    .line 67
    iput v0, p0, Lorg/codeaurora/camera/ExtendedFace;->leftrightGaze:I

    .line 68
    iput v0, p0, Lorg/codeaurora/camera/ExtendedFace;->topbottomGaze:I

    .line 53
    return-void
.end method


# virtual methods
.method public getBlinkDetected()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lorg/codeaurora/camera/ExtendedFace;->blinkDetected:I

    return v0
.end method

.method public getExtendedFaceInfo()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 205
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 206
    .local v0, "faceInfo":Landroid/os/Bundle;
    const-string v1, "smileValue"

    iget v2, p0, Lorg/codeaurora/camera/ExtendedFace;->smileDegree:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 208
    const-string v1, "isSmile"

    iget v2, p0, Lorg/codeaurora/camera/ExtendedFace;->isSmile:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 210
    const-string v1, "leftEyeClosedValue"

    iget v2, p0, Lorg/codeaurora/camera/ExtendedFace;->leyeBlink:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 211
    const-string v1, "rightEyeClosedValue"

    iget v2, p0, Lorg/codeaurora/camera/ExtendedFace;->reyeBlink:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 213
    const-string v1, "facePitchDegree"

    iget v2, p0, Lorg/codeaurora/camera/ExtendedFace;->updownDir:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 214
    const-string v1, "faceYawDegree"

    iget v2, p0, Lorg/codeaurora/camera/ExtendedFace;->leftrightDir:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 215
    const-string v1, "faceRollDegree"

    iget v2, p0, Lorg/codeaurora/camera/ExtendedFace;->rollDir:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 216
    const-string v1, "gazeUpDownDegree"

    iget v2, p0, Lorg/codeaurora/camera/ExtendedFace;->topbottomGaze:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 217
    const-string v1, "gazeLeftRightDegree"

    iget v2, p0, Lorg/codeaurora/camera/ExtendedFace;->leftrightGaze:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 219
    const-string v1, "blinkDetected"

    iget v2, p0, Lorg/codeaurora/camera/ExtendedFace;->blinkDetected:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 220
    const-string v1, "smileScore"

    iget v2, p0, Lorg/codeaurora/camera/ExtendedFace;->smileScore:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 221
    const-string v1, "faceRecognized"

    iget v2, p0, Lorg/codeaurora/camera/ExtendedFace;->faceRecognized:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 223
    return-object v0
.end method

.method public getFaceRecognized()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lorg/codeaurora/camera/ExtendedFace;->faceRecognized:I

    return v0
.end method

.method public getGazeAngle()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lorg/codeaurora/camera/ExtendedFace;->gazeAngle:I

    return v0
.end method

.method public getIsSmile()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lorg/codeaurora/camera/ExtendedFace;->isSmile:I

    return v0
.end method

.method public getLeftEyeBlinkDegree()I
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Lorg/codeaurora/camera/ExtendedFace;->leyeBlink:I

    return v0
.end method

.method public getLeftRightDirection()I
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lorg/codeaurora/camera/ExtendedFace;->leftrightDir:I

    return v0
.end method

.method public getLeftRightGazeDegree()I
    .locals 1

    .prologue
    .line 178
    iget v0, p0, Lorg/codeaurora/camera/ExtendedFace;->leftrightGaze:I

    return v0
.end method

.method public getRightEyeBlinkDegree()I
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Lorg/codeaurora/camera/ExtendedFace;->reyeBlink:I

    return v0
.end method

.method public getRollDirection()I
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lorg/codeaurora/camera/ExtendedFace;->rollDir:I

    return v0
.end method

.method public getSmileDegree()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lorg/codeaurora/camera/ExtendedFace;->smileDegree:I

    return v0
.end method

.method public getSmileScore()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lorg/codeaurora/camera/ExtendedFace;->smileScore:I

    return v0
.end method

.method public getTopBottomGazeDegree()I
    .locals 1

    .prologue
    .line 187
    iget v0, p0, Lorg/codeaurora/camera/ExtendedFace;->topbottomGaze:I

    return v0
.end method

.method public getUpDownDirection()I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lorg/codeaurora/camera/ExtendedFace;->updownDir:I

    return v0
.end method
