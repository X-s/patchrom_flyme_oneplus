.class Lcom/android/server/VibratorService$VibrationInfo;
.super Ljava/lang/Object;
.source "VibratorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VibrationInfo"
.end annotation


# instance fields
.field opPkg:Ljava/lang/String;

.field pattern:[J

.field repeat:I

.field startTime:J

.field timeout:J

.field uid:I

.field usageHint:I

.field vibrateIntensity:Ljava/lang/String;


# direct methods
.method public constructor <init>(JJ[JIIILjava/lang/String;)V
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "startTime"    # J
    .param p5, "pattern"    # [J
    .param p6, "repeat"    # I
    .param p7, "usageHint"    # I
    .param p8, "uid"    # I
    .param p9, "opPkg"    # Ljava/lang/String;

    .prologue
    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    const-string/jumbo v0, "Middle"

    iput-object v0, p0, Lcom/android/server/VibratorService$VibrationInfo;->vibrateIntensity:Ljava/lang/String;

    .line 220
    iput-wide p1, p0, Lcom/android/server/VibratorService$VibrationInfo;->timeout:J

    .line 221
    iput-wide p3, p0, Lcom/android/server/VibratorService$VibrationInfo;->startTime:J

    .line 222
    iput-object p5, p0, Lcom/android/server/VibratorService$VibrationInfo;->pattern:[J

    .line 223
    iput p6, p0, Lcom/android/server/VibratorService$VibrationInfo;->repeat:I

    .line 224
    iput p7, p0, Lcom/android/server/VibratorService$VibrationInfo;->usageHint:I

    .line 225
    iput p8, p0, Lcom/android/server/VibratorService$VibrationInfo;->uid:I

    .line 226
    iput-object p9, p0, Lcom/android/server/VibratorService$VibrationInfo;->opPkg:Ljava/lang/String;

    .line 219
    return-void
.end method

.method public constructor <init>(JJ[JLjava/lang/String;IIILjava/lang/String;)V
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "startTime"    # J
    .param p5, "pattern"    # [J
    .param p6, "vibrateIntensity"    # Ljava/lang/String;
    .param p7, "repeat"    # I
    .param p8, "usageHint"    # I
    .param p9, "uid"    # I
    .param p10, "opPkg"    # Ljava/lang/String;

    .prologue
    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    const-string/jumbo v0, "Middle"

    iput-object v0, p0, Lcom/android/server/VibratorService$VibrationInfo;->vibrateIntensity:Ljava/lang/String;

    .line 207
    iput-object p6, p0, Lcom/android/server/VibratorService$VibrationInfo;->vibrateIntensity:Ljava/lang/String;

    .line 208
    iput-wide p1, p0, Lcom/android/server/VibratorService$VibrationInfo;->timeout:J

    .line 209
    iput-wide p3, p0, Lcom/android/server/VibratorService$VibrationInfo;->startTime:J

    .line 210
    iput-object p5, p0, Lcom/android/server/VibratorService$VibrationInfo;->pattern:[J

    .line 211
    iput p7, p0, Lcom/android/server/VibratorService$VibrationInfo;->repeat:I

    .line 212
    iput p8, p0, Lcom/android/server/VibratorService$VibrationInfo;->usageHint:I

    .line 213
    iput p9, p0, Lcom/android/server/VibratorService$VibrationInfo;->uid:I

    .line 214
    iput-object p10, p0, Lcom/android/server/VibratorService$VibrationInfo;->opPkg:Ljava/lang/String;

    .line 206
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 232
    const-string/jumbo v1, "timeout: "

    .line 231
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 233
    iget-wide v2, p0, Lcom/android/server/VibratorService$VibrationInfo;->timeout:J

    .line 231
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 234
    const-string/jumbo v1, ", startTime: "

    .line 231
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 235
    iget-wide v2, p0, Lcom/android/server/VibratorService$VibrationInfo;->startTime:J

    .line 231
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 236
    const-string/jumbo v1, ", pattern: "

    .line 231
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 237
    iget-object v1, p0, Lcom/android/server/VibratorService$VibrationInfo;->pattern:[J

    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    .line 231
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 239
    const-string/jumbo v1, ", vibrateIntensity: "

    .line 231
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 240
    iget-object v1, p0, Lcom/android/server/VibratorService$VibrationInfo;->vibrateIntensity:Ljava/lang/String;

    .line 231
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 242
    const-string/jumbo v1, ", repeat: "

    .line 231
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 243
    iget v1, p0, Lcom/android/server/VibratorService$VibrationInfo;->repeat:I

    .line 231
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 244
    const-string/jumbo v1, ", usageHint: "

    .line 231
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 245
    iget v1, p0, Lcom/android/server/VibratorService$VibrationInfo;->usageHint:I

    .line 231
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 246
    const-string/jumbo v1, ", uid: "

    .line 231
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 247
    iget v1, p0, Lcom/android/server/VibratorService$VibrationInfo;->uid:I

    .line 231
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 248
    const-string/jumbo v1, ", opPkg: "

    .line 231
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 249
    iget-object v1, p0, Lcom/android/server/VibratorService$VibrationInfo;->opPkg:Ljava/lang/String;

    .line 231
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
